.class public Lcom/android/settings/kryp/settings/HandlePreferenceFragments;
.super Ljava/lang/Object;
.source "HandlePreferenceFragments.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field adapter:Landroid/widget/ListAdapter;

.field c:Landroid/content/Context;

.field cr:Landroid/content/ContentResolver;

.field ed:Landroid/content/SharedPreferences$Editor;

.field hs:Lcom/android/settings/kryp/settings/HandleScripts;

.field isOutOfBounds:Z

.field pf:Landroid/preference/PreferenceFragment;

.field pm:Landroid/preference/PreferenceManager;

.field prefs:Landroid/content/SharedPreferences;

.field spName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    iput-object p1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/kryp/settings/ComotID;->init(Ljava/lang/String;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->spName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pm:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pm:Landroid/preference/PreferenceManager;

    invoke-virtual {v1, p3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pm:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->ed:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "xml"

    iget-object v3, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p3, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method private getAllPrefs()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->adapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    instance-of v2, v1, Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->allGroups(Landroid/preference/Preference;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleKeysToKillProcess(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/settings/kryp/util/RootTools/RootTools;->isAccessGiven()Z

    move-result v6

    if-eqz v6, :cond_2

    new-array v3, v9, [Ljava/lang/String;

    const-string v6, "kill_ui"

    aput-object v6, v3, v8

    new-array v2, v9, [Ljava/lang/String;

    const-string v6, "fastboot"

    aput-object v6, v2, v8

    const/16 v6, 0xa

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "kill_systemui"

    aput-object v6, v4, v8

    const-string v6, "battery_keyguard"

    aput-object v6, v4, v9

    const-string v6, "key_qt_hide_label"

    aput-object v6, v4, v10

    const-string v6, "lockscreen_notifications"

    aput-object v6, v4, v11

    const/4 v6, 0x4

    const-string v7, "battery_icon_style"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "BLUR_RECENT"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "qs_text_color"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "qs_icon_color"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "pulldown_text"

    aput-object v7, v4, v6

    const/16 v6, 0x9

    const-string v7, "notif_icon_bg_color"

    aput-object v7, v4, v6

    new-array v0, v11, [[Ljava/lang/String;

    aput-object v3, v0, v8

    aput-object v2, v0, v9

    aput-object v4, v0, v10

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_3

    const/4 v1, 0x0

    :goto_1
    aget-object v6, v0, v5

    array-length v6, v6

    if-ge v1, v6, :cond_1

    aget-object v6, v0, v5

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_0
    const-string v6, "com.android.systemui"

    invoke-direct {p0, v6}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->killProcess(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v6, "zygote"

    invoke-virtual {p0, v6}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->appRebootRequired(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v6, "com.android.systemui"

    invoke-virtual {p0, v6}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->appRebootRequired(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    const-string v7, "Su access denied!"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initAllKeys()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pm:Landroid/preference/PreferenceManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/kryp/settings/prefs/FilePreference;

    move/from16 v22, v0

    if-nez v22, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v18, 0x1

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_2
    if-nez v3, :cond_2

    const/4 v2, 0x0

    :goto_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move/from16 v3, v18

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_4
    move/from16 v0, v18

    if-eq v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :catch_1
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move/from16 v3, v18

    goto :goto_4

    :cond_4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move-object/from16 v21, v19

    :goto_5
    :try_start_2
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Lcom/android/settings/kryp/settings/prefs/MyListPreference;

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v22

    aget-object v20, v7, v22

    check-cast v20, Ljava/lang/String;

    const-string v22, "listview index"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->isOutOfBounds:Z
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_6
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->isOutOfBounds:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/kryp/settings/prefs/MyListPreference;

    invoke-virtual {v13}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v15

    aget-object v22, v14, v15

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/kryp/settings/prefs/MyEditTextPreference;

    move/from16 v22, v0

    if-eqz v22, :cond_b

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/kryp/settings/prefs/MyEditTextPreference;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/android/settings/kryp/settings/prefs/MyEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_b
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_c
    move-object/from16 v21, v4

    goto/16 :goto_5

    :catch_2
    move-exception v6

    const-string v22, "listview index"

    const-string v23, "exception"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->isOutOfBounds:Z

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private killProcess(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkill "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v5, v2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateDatabase(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v3, 0x0

    const-string v2, ""

    instance-of v4, p2, Landroid/preference/SwitchPreference;

    if-nez v4, :cond_0

    instance-of v4, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    :cond_0
    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->handleKeysToKillProcess(Ljava/lang/String;)V

    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    instance-of v4, p2, Lcom/android/settings/kryp/settings/prefs/MyEditTextPreference;

    if-nez v4, :cond_4

    instance-of v4, p2, Lcom/android/settings/kryp/settings/prefs/MyListPreference;

    if-nez v4, :cond_4

    instance-of v4, p2, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    if-nez v4, :cond_4

    instance-of v4, p2, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;

    if-eqz v4, :cond_5

    :cond_4
    const-string v3, ""

    invoke-interface {p3, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_5
    instance-of v4, p2, Lcom/android/settings/kryp/settings/prefs/ColorPickerPreference;

    if-eqz v4, :cond_6

    const/4 v3, -0x1

    invoke-interface {p3, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    instance-of v4, p2, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;

    if-eqz v4, :cond_1

    invoke-interface {p3, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method


# virtual methods
.method public allGroups(Landroid/preference/Preference;)V
    .locals 17

    move-object/from16 v12, p1

    check-cast v12, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v15

    if-ge v4, v15, :cond_8

    invoke-virtual {v12, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    instance-of v15, v8, Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->allGroups(Landroid/preference/Preference;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->buildPreferenceParentTree()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v15

    const-string v16, "notification_panel_bg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :goto_2
    if-eqz v13, :cond_0

    const/4 v6, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v15, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v2, v15, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_3
    throw v15

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_5
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v15

    const-string v16, "other_panel_bg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :goto_4
    if-eqz v13, :cond_0

    const/4 v6, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v15, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v2, v15, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v6, :cond_0

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    :catch_6
    move-exception v3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v6, :cond_0

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_1
    move-exception v15

    if-eqz v6, :cond_7

    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_7
    :goto_5
    throw v15

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_8
    return-void
.end method

.method public appRebootRequired(Ljava/lang/String;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v1, ""

    const/4 v0, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    const-string v9, "app_reboot_required_title"

    const-string v10, "string"

    invoke-static {v9, v10}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    const-string v10, "app_reboot_required_message"

    const-string v11, "string"

    invoke-static {v10, v11}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v1, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const-string v9, "cancel"

    const-string v10, "string"

    invoke-static {v9, v10}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    new-instance v10, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$3;

    invoke-direct {v10, p0}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$3;-><init>(Lcom/android/settings/kryp/settings/HandlePreferenceFragments;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const-string v9, "ok"

    const-string v10, "string"

    invoke-static {v9, v10}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    new-instance v10, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$2;

    invoke-direct {v10, p0, p1}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$2;-><init>(Lcom/android/settings/kryp/settings/HandlePreferenceFragments;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    iget-object v8, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const-string v8, "colorAccent"

    const-string v9, "attr"

    invoke-static {v8, v9}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8, v7, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public buildPreferenceParentTree()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iget-object v6, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v6}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v6, v0, Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_1

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public onPauseFragment()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "script#"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".sh"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "scripts"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->canExecute()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_0

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/io/File;->setExecutable(Z)Z

    :cond_0
    new-instance v2, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$1;

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-direct {v2, p0, v11, v12}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$1;-><init>(Lcom/android/settings/kryp/settings/HandlePreferenceFragments;I[Ljava/lang/String;)V

    const/4 v11, 0x1

    :try_start_0
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_1
    const/4 v11, 0x1

    return v11

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    const-string v12, "."

    invoke-virtual {v1, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const/high16 v12, 0x10000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v8, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    :try_start_1
    iget-object v11, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    iget-object v11, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    const-string v12, "App not installed or intent not valid"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "notification_panel_bg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.PICK"

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v11, "image/*"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    const/16 v12, 0x2e

    invoke-virtual {v11, v4, v12}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "other_panel_bg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.PICK"

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v11, "image/*"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    const/16 v12, 0x2e

    invoke-virtual {v11, v4, v12}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    goto/16 :goto_1
.end method

.method public onResumeFragment()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->initAllKeys()V

    invoke-direct {p0}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->getAllPrefs()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    const/4 v15, -0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v15, :pswitch_data_0

    :cond_1
    :goto_1
    instance-of v15, v13, Lcom/android/settings/kryp/settings/prefs/FilePreference;

    if-eqz v15, :cond_6

    :goto_2
    return-void

    :sswitch_0
    const-string v17, "SwitchPreference"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x0

    goto :goto_0

    :sswitch_1
    const-string v17, "CheckBoxPreference"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :sswitch_2
    const-string v17, "MyListPreference"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x2

    goto :goto_0

    :sswitch_3
    const-string v17, "MyEditTextPreference"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x3

    goto :goto_0

    :sswitch_4
    const-string v17, "ColorPickerPreference"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x4

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    const/4 v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v15, "awesomehead"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    new-instance v3, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "pkill com.android.systemui"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    const/4 v15, 0x1

    :try_start_0
    invoke-static {v15}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto/16 :goto_1

    :cond_2
    const-string v15, "key_qt_hide_label"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    new-instance v3, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "pkill com.android.systemui"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    const/4 v15, 0x1

    :try_start_1
    invoke-static {v15}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_1

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    :catch_5
    move-exception v6

    invoke-virtual {v6}, Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    const-string v15, "battery_keyguard"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    new-instance v3, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "pkill com.android.systemui"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    const/4 v15, 0x1

    :try_start_2
    invoke-static {v15}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException; {:try_start_2 .. :try_end_2} :catch_8

    goto/16 :goto_1

    :catch_6
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_7
    move-exception v6

    invoke-virtual {v6}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    :catch_8
    move-exception v6

    invoke-virtual {v6}, Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto/16 :goto_1

    :cond_4
    const-string v15, "qs_text_color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    new-instance v3, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "pkill com.android.systemui"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    const/4 v15, 0x1

    :try_start_3
    invoke-static {v15}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException; {:try_start_3 .. :try_end_3} :catch_b

    goto/16 :goto_1

    :catch_9
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_a
    move-exception v6

    invoke-virtual {v6}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    :catch_b
    move-exception v6

    invoke-virtual {v6}, Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v4, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/kryp/settings/prefs/MyListPreference;

    const-string v15, ""

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->isOutOfBounds:Z

    if-nez v15, :cond_5

    invoke-virtual {v9}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v10}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v12

    aget-object v15, v11, v12

    invoke-virtual {v9, v15}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v10}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v9, v15}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    const-string v15, "nothing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    new-instance v3, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "pkill com.android.systemui"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    const/4 v15, 0x1

    :try_start_4
    invoke-static {v15}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException; {:try_start_4 .. :try_end_4} :catch_e

    goto/16 :goto_1

    :catch_c
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    const-string v15, ""

    invoke-virtual {v9, v15}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :catch_d
    move-exception v6

    invoke-virtual {v6}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/kryp/settings/prefs/MyEditTextPreference;

    const-string v15, ""

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v15, ""

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/android/settings/kryp/settings/prefs/MyEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/kryp/settings/prefs/ColorPickerPreference;

    const/4 v15, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPreference;->setColor(I)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v13, v2}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->updateDatabase(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x44f557e -> :sswitch_3
        0x1c1b08fe -> :sswitch_1
        0x350a234f -> :sswitch_0
        0x3f675d05 -> :sswitch_2
        0x7ed4656c -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
