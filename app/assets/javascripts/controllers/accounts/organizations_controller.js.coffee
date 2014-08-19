App.AccountsOrganizationsController = Em.ObjectController.extend
  availableLangs: ['de','en']
  newOu: null
  currentOrganizationalUnit: null
  ownerEmail: null

  currentOuObserver: (->
    return if App.get('currentOu.name') == 'private'
    @set('currentOrganizationalUnit', App.get('currentOu'))
  ).observes 'App.currentOu'

  actions:

    createOrganizationalUnit: ->
      controller = @
      @get('newOu')
        .save()
        .then (newOu)->
          toastr.info Em.I18n.t('accounts.organizations.created', name: newOu.get('name'))
          controller.set('newOu', controller.store.createRecord('organizational_unit'))
          $('.modal-dialog .modal-header .close').click()
          App.get('currentUser')
            .reload()
            .then ->
              App.set('currentOu',newOu)

    removeOrganizationalUnit: (ou)->
      controller = @
      bootbox.prompt Em.I18n.t('accounts.organizations.really_delete', name: ou.get('name')), (result)->
        if result && result.toLowerCase() == ou.get('name').toLowerCase()
          console.log ou
          ou
            .destroyRecord()
            .then ->
              toastr.success Em.I18n.t('accounts.organizations.deleted', name: ou.get('name'))
            .catch ->
              toastr.error Em.I18n.t('accounts.organizations.deletion_failed', name: ou.get('name'))
        else
          toastr.warning Em.I18n.t('cancelled')