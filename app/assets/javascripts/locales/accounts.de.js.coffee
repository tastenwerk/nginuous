Em.I18n.availableTranslations ||= {}
Em.I18n.availableTranslations.de ||= {}
Em.merge Em.I18n.availableTranslations.de,
  accounts:
    'overview': "Überblick"
    'plans_and_prices': "Tarife und Preise"
    'legend': 'Legende'
    'invoices': 
      'title': "Rechnungen"
      'my': 'Meine Rechnungen'
      'date': 'Datum'
      'no': 'Nr.'
      'amount': 'Betrag'
      'none_yet': 'Es wurden noch keine Rechnungen ausgestellt'
    'personal_data': "Persönliche Angaben"
    'address': 'Adresse'
    'avatar': 'Avatar'
    'click_img_left_to_update': 'Klick auf das Bild um deinen persönlichen Avatar hochzuladen'
    'plans': 'Tarife'
    access:
      'none': 'Kein Zugriff'
      'read': 'Lesezugriff'
      'write': 'Inhalte schreiben und erstellen'
      'write_create': 'Inhalte schreiben und erstellen'
      'share': 'Inhalte teilen'
      'delete': 'Administrator'
    plan:
      'my': 'Meine Tarife'
      'save': 'Pläne speichern'
      'add': 'Tarif hinzufügen'
      'select_your': 'Wähle deine Tarife'
      'select_first_then_apply': 'Wähle zuerst die Pläne und Apps aus, die du verwenden möchtest. Um den Tarif wieder zu entfernen, wechsle in deine Profileinstellungen -> "Pläne und Preise". Deine Auswahl wird erst gespeichert, wenn du auf "Pläne speichern" geklickt hast.'
      'disk': 'Speicherplatz'
      'items': 'max Einträge'
      'app_name': 'App'
      'name': 'Bezeichnung'
      'collaborators': 'Mitarbeiter'
      'price': 'Preis'
      'access': 'Zugriffsrechte'
      'quota': 'Quota'
    plans:
      'updated': 'Pläne wurden aktualisiert und gespeichert'
      'select_at_least_one': 'Es muss mindestens ein Tarif aktiv sein. Es gibt auch kostenlose Tarife. Bitte wähle einen.'
    organizations:
      'title': 'Organisationen'
      'add': 'Neue Organisationen hinzufügen'
      'name': 'Firma / Arbeitsgruppe'
      'fqdn': 'Voller Name der Domäne'
      'fqdn_desc': 'example.com'
      'default_lang': 'Bevorzugte Sprache'
      'owner': 'Eigentümer'
      'collaborators': 'Mitarbeiter'
      'create': 'Organisation erstellen'
      'create_title': 'Neue Organisation'
      'created': 'Organisation {{name}} wurde erfolgreich gespeichert'
      'select': 'Wähle eine Organisation aus der Liste, um sie zu bearbeiten'
      'settings': 'Einstellungen'
      'change_ownership_desc': 'Du kannst die Eigentümerschaft dieser Organisation an eine andere Person übertragen. Die angegebene Person muss Mitglied in der Organistaion sein. Um den Eigentümerwechsel abzuschließen, muss der neue Eigentümer zustimmen und falls kommerzielle Produkte verwendet werden, die erforderlichen Bankdaten bekannt gegeben haben.'
      'delete': 'Organisation löschen'
      'really_delete': 'Möchtest du die Organisation <strong>{{name}}</strong> wirklich löschen? Alle Mitglieder werden aus der Organisation ausgetragen und zugehörige Daten werden gelöscht. Diese Aktion kann nicht rückgängig gemacht werden. Falls du fortfahren möchtest, schreib bitte den Namen der Organisation (<strong>{{name}}</strong>)'
      'deleted': 'Organisation <strong>{{name}}</strong> wurde gelöscht'
      'yes': 'ja'
    users:
      'title': 'Mitarbeiter'
      'id': 'ID'
      'email': 'Email'
      'firstname': 'Vorname'
      'lastname': 'Nachname'
      'edit_account': 'Konto bearbeiten'
      'formattedLastLoginAt': 'Login'
      'add': 'Mitarbeiter hinzufügen / einladen'
      'invite_desc': 'Du kannst Mitarbeiter in deine Organisation einladen und ihnen Rechte für Anwendungen zuteilen.'
      'lang_help': 'Sprache der Einladungsemail und voreingestellte Systemsprache'
      'change_password': 'Passwort ändern'
      'password_saved': 'Das neue Passwort wurde gespeichert'
      'password_saving_failed': 'Das neue Passworte konnte nicht gespeichert werden'
      'model_access': 'Du kannst hier Zugriffsrechte für dieses Konto einstellen'
      'created': 'Konto {{name}} wurde erstellt'
      'rules_saved': 'Zugriffsregeln für Konto {{name}} wurde gespeichert'
      'saved': 'Konto {{name}} wurde gespeichert'
      'saving_failed': 'Konto {{name}} konnte nicht gespeichert werden'
      'uninvite': 'aus Organisation entfernen'
      'really_uninvite': 'Soll das Konto {{name}} aus dieser Organisation gelöscht werden?'
      'cannot_remove_yourself': 'Du kannst dich selbst nicht aus einer Organisation entfernen, die du besitzt'
      'uninvited': 'Konto {{name}} wurde aus der Organisation entfernt'
      'cur_password': 'Aktuelles Passwort'
      'new_password': 'Neues Passwort'
      'confirm_password': 'Passwort wiederholen'
      errors:
        'confirmation_mismatch': 'Passwörter stimmen nicht überein'
        'current_missing': 'Bitte gib dein altes Passwort ein'
        'new_missing': 'Bitte gib ein neues Passwort ein'
        'amount_exceeded': 'Der aktuelle Tarif erlaubt keine weiteren Mitarbeiter'
    user:
      access:
        none: '{{user_name}} kann jetzt nicht mehr auf {{app_name}} zugreifen'
        read: '{{user_name}} kann jetzt {{app_name}} lesen (aber nicht ändern)'
        write: '{{user_name}} kann jetzt {{app_name}} schreiben (und nur eigene Inhalte löschen)'
        delete: '{{user_name}} hat jetzt Administratorrechte auf {{app_name}}'
        repair_rules: 'Eigentümerrechte reparieren'
        rules_repaired: 'Eigentümerrechte wurden erfolgreich repariert'
    api:
      title: 'API'
      generate_new: 'Generate a new API key'
      key: 'Schlüssel'
      desc: 'Du hast derzeit keine API Schlüssel angelegt. API Schlüssel dienen der Verbindung von caminio mit anderen Systemen'
      edit: 'API Schlüssel bearbeiten'
      delete: 'API Schlüssel löschen'
      deleted: 'API Schlüssel {{name}} wurde gelöscht'
      deletion_failed: 'API Schlüssel {{name}} konnte nicht gelöscht werden'
      really_delete: 'API Schlüssel {{name}} wirklich löschen?'
      name: 'Schlüsselname'
      saved: 'Schlüssel {{name}} wurde gespeichert'
      saving_failed: 'Schlüssel konnte nicht gespeichert werden'
