.class public Lcom/android/settings/password/ChooseLockGenericController;
.super Ljava/lang/Object;
.source "ChooseLockGenericController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 42
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 46
    invoke-static {p1, p2}, Lcom/android/settings/password/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-result-object v1

    .line 42
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/ManagedLockPasswordProvider;)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/ManagedLockPasswordProvider;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    .line 56
    iput p2, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    .line 57
    iput-object p4, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    .line 58
    iput-object p3, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 59
    return-void
.end method


# virtual methods
.method public getTitle(Lcom/android/settings/password/ScreenLockType;)Ljava/lang/CharSequence;
    .locals 1

    .line 117
    sget-object v0, Lcom/android/settings/password/ChooseLockGenericController$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 131
    const/4 p1, 0x0

    return-object p1

    .line 127
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v0, 0x7f120e6a    # @string/unlock_set_unlock_password_title 'Password'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 125
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v0, 0x7f120e6e    # @string/unlock_set_unlock_pin_title 'PIN'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v0, 0x7f120e6c    # @string/unlock_set_unlock_pattern_title 'Pattern'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 129
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 121
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v0, 0x7f120e66    # @string/unlock_set_unlock_none_title 'Swipe'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 119
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v0, 0x7f120e68    # @string/unlock_set_unlock_off_title 'None'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVisibleScreenLockTypes(IZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/android/settings/password/ScreenLockType;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(I)I

    move-result p1

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 150
    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    if-nez p2, :cond_0

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_2
    return-object v0
.end method

.method public isScreenLockDisabledByAdmin(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 3

    .line 105
    iget v0, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, p2, :cond_0

    .line 106
    move p2, v2

    goto :goto_0

    .line 105
    :cond_0
    nop

    .line 106
    move p2, v1

    :goto_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    if-ne p1, v0, :cond_3

    .line 107
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    .line 108
    invoke-virtual {p1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    move p2, v1

    goto :goto_2

    .line 108
    :cond_2
    :goto_1
    nop

    .line 110
    move p2, v2

    :cond_3
    :goto_2
    return p2
.end method

.method public isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 0

    .line 95
    iget p1, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z
    .locals 2

    .line 74
    sget-object v0, Lcom/android/settings/password/ChooseLockGenericController$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 84
    return v0

    .line 82
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {p1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result p1

    return p1

    .line 78
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f05000d    # @bool/config_hide_swipe_security_option 'false'

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    .line 80
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    .line 76
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f05000c    # @bool/config_hide_none_security_option 'false'

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public upgradeQuality(I)I
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
