.class public Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;,
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;,
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;
    }
.end annotation


# instance fields
.field mAuthenticateListener:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

.field private mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintsRenaming:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mInFingerprintLockout:Z

.field private mLaunchedConfirm:Z

.field mRemovalListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

.field private mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 158
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateListener:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    .line 185
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    .line 210
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 660
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->highlightFingerprintItem(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 8

    .line 388
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 389
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 391
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 392
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    .line 393
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;)V

    .line 395
    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 398
    invoke-virtual {v5, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setPersistent(Z)V

    .line 399
    const v6, 0x7f080100    # @drawable/ic_fingerprint_24dp 'res/drawable/ic_fingerprint_24dp.xml'

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setIcon(I)V

    .line 400
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->isRemovingFingerprint(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 401
    invoke-virtual {v5, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setEnabled(Z)V

    .line 403
    :cond_0
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 404
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    :cond_1
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 407
    invoke-virtual {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    :cond_2
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 410
    const-string v1, "key_fingerprint_add"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 411
    const v1, 0x7f12065e    # @string/fingerprint_add_title 'Add fingerprint'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 412
    const v1, 0x7f08012f    # @drawable/ic_menu_add 'res/drawable/ic_menu_add.xml'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 413
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 414
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 415
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    .line 416
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 380
    :cond_0
    const v0, 0x7f150093    # @xml/security_settings_fingerprint 'res/xml/security_settings_fingerprint.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addPreferencesFromResource(I)V

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 382
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 384
    return-object v0
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_0

    .line 596
    const v1, 0x7f0801e7    # @drawable/preference_highlight 'res/drawable/preference_highlight.xml'

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private highlightFingerprintItem(I)V
    .locals 4

    .line 603
    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 605
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 606
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object p1

    .line 608
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 609
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 610
    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 611
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 612
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 613
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 614
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V
    .locals 0

    .line 344
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 345
    return-void
.end method

.method private launchChooseOrConfirmLock()V
    .locals 12

    .line 624
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 625
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v10

    .line 626
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 627
    nop

    .line 628
    const v1, 0x7f120c00    # @string/security_settings_fingerprint_preference_title 'Fingerprint'

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 627
    const/16 v3, 0x65

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v7, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 630
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    const-string v1, "hide_disabled_prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 635
    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    const-string v1, "challenge"

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 638
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 641
    :cond_0
    return-void
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    .line 654
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 658
    return-void
.end method

.method private retryFingerprint()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 269
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-eqz v0, :cond_1

    .line 275
    return-void

    .line 277
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->startAuthentication(I)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateListener:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;)V

    .line 281
    :cond_2
    return-void

    .line 270
    :cond_3
    :goto_0
    return-void
.end method

.method private showRenameDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 9

    .line 522
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;-><init>()V

    .line 523
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 524
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    .line 526
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v7

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 527
    const-string p1, "fingerprint"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 528
    goto :goto_0

    .line 529
    :cond_0
    const-string v2, "fingerprint"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 531
    :goto_0
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setDeleteInProgress(Z)V

    .line 532
    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 533
    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-class v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method private updateAddPreference()V
    .locals 8

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0046    # @android:integer/config_globalActionsKeyTimeout

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 424
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v0, :cond_1

    .line 427
    move v1, v3

    goto :goto_0

    .line 424
    :cond_1
    nop

    .line 427
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v4

    .line 428
    if-eqz v1, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f12065d    # @string/fingerprint_add_max 'You can add up to %d fingerprints'

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    .line 430
    :goto_1
    const-string v5, "key_fingerprint_add"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 431
    invoke-virtual {v5, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 432
    if-nez v1, :cond_3

    if-nez v4, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 433
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .line 452
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 453
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 454
    return-void
.end method


# virtual methods
.method deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->startRemove(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 646
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result p1

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 647
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 648
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 649
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    .line 650
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    .line 551
    const v0, 0x7f120702    # @string/help_url_fingerprint ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 285
    const/16 v0, 0x31

    return v0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 241
    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    goto :goto_0

    .line 245
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 247
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 248
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    if-eqz p1, :cond_3

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 260
    if-eqz p1, :cond_3

    .line 261
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 264
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 265
    return-void

    .line 243
    :cond_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 556
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 557
    const/16 v0, 0x66

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    const/16 p3, 0xa

    if-ne p1, p3, :cond_3

    .line 568
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 570
    invoke-virtual {p2, p1}, Landroid/app/Activity;->setResult(I)V

    .line 571
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 559
    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 560
    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 562
    :cond_2
    if-eqz p3, :cond_3

    .line 563
    const-string p1, "hw_auth_token"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 575
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez p1, :cond_4

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 579
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 290
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 295
    nop

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "authenticate_sidecar"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    .line 297
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    if-nez v1, :cond_0

    .line 298
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-direct {v1}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    const-string v3, "authenticate_sidecar"

    .line 300
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 304
    nop

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "removal_sidecar"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    .line 306
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    if-nez v1, :cond_1

    .line 307
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    const-string v3, "removal_sidecar"

    .line 309
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 312
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 315
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 316
    if-eqz v1, :cond_2

    .line 317
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setDeleteInProgress(Z)V

    .line 320
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    .line 322
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 323
    const-string v2, "mFingerprintsRenaming"

    .line 324
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    .line 325
    const-string v2, "hw_auth_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 327
    const-string v2, "launched_confirm"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 330
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "android.intent.extra.USER_ID"

    .line 331
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 330
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 334
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const/4 v2, 0x1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-nez p1, :cond_4

    .line 335
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 336
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->launchChooseOrConfirmLock()V

    .line 339
    :cond_4
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    .line 340
    const/16 v3, 0x20

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 342
    new-instance v4, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v5, "admin_details"

    new-instance v6, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintSettings$FingerprintSettingsFragment$yE_lJ-MtxexMYsEgD8_Zrh5Z2iY;

    invoke-direct {v6, v0, v3}, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintSettings$FingerprintSettingsFragment$yE_lJ-MtxexMYsEgD8_Zrh5Z2iY;-><init>(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-direct {v4, v5, v6}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 346
    nop

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHelpResource()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 346
    invoke-static {v0, v5, v6}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 348
    new-instance v6, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v7, "url"

    invoke-direct {v6, v0, v7, v5}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 350
    if-eqz v3, :cond_5

    .line 352
    const v0, 0x7f120be3    # @string/security_settings_fingerprint_enroll_disclaimer_lockscreen_disabled ' The screen lock option is disabled. To learn more, contact your organization's admin. <annotation i ...'

    goto :goto_0

    .line 353
    :cond_5
    const v0, 0x7f120be2    # @string/security_settings_fingerprint_enroll_disclaimer 'In addition to unlocking your phone, you can also use your fingerprint to authorize purchases and ap ...'

    .line 350
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    aput-object v6, v3, v1

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method

.method public onDeleteClick(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)V
    .locals 5

    .line 496
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 497
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    .line 500
    if-eqz v2, :cond_2

    .line 501
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const-string p1, "FingerprintSettings"

    const-string v0, "Fingerprint delete in progress, skipping"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 505
    :cond_1
    invoke-static {p1, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->newInstance(Landroid/hardware/fingerprint/Fingerprint;Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    move-result-object p1

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 508
    :cond_2
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;-><init>()V

    .line 509
    nop

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    .line 511
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 512
    const-string v4, "fingerprint"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 513
    const-string p1, "isProfileChallengeUser"

    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 514
    invoke-virtual {v0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->setArguments(Landroid/os/Bundle;)V

    .line 515
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-class v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    .line 517
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-virtual {v0, p1, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 519
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 583
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 586
    if-gez v0, :cond_0

    .line 587
    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 458
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 459
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->stopAuthentication()V

    .line 466
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 539
    nop

    .line 540
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 541
    const-string p2, "fingerprint_enable_keyguard_toggle"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    const-string p2, "FingerprintSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 478
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 479
    const-string v1, "key_fingerprint_add"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 481
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 482
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 485
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 486
    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v0, :cond_1

    .line 487
    move-object v0, p1

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 488
    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    .line 489
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->showRenameDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 491
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 441
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 445
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 446
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;)V

    .line 449
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 470
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 472
    const-string v0, "launched_confirm"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 473
    const-string v0, "mFingerprintsRenaming"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 474
    return-void
.end method

.method protected removeFingerprintPreference(I)V
    .locals 3

    .line 358
    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove preference with key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_0
    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find preference to remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    :goto_0
    return-void
.end method
