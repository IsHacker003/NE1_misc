.class public Lcom/android/settings/development/HdcpCheckingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "HdcpCheckingPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field static final USER_BUILD_TYPE:Ljava/lang/String; = "user"


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03005d    # @array/hdcp_checking_values

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mListValues:[Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03005b    # @array/hdcp_checking_summaries

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mListSummaries:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method private updateHdcpValues(Landroid/support/v7/preference/ListPreference;)V
    .locals 3

    .line 76
    const-string v0, "persist.sys.hdcp_checking"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    nop

    .line 78
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    nop

    .line 81
    goto :goto_1

    .line 78
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v1, 0x1

    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method


# virtual methods
.method public getBuildType()Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "hdcp_checking"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 54
    const-string v0, "user"

    invoke-virtual {p0}, Lcom/android/settings/development/HdcpCheckingPreferenceController;->getBuildType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 64
    const-string p1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/development/HdcpCheckingPreferenceController;->updateHdcpValues(Landroid/support/v7/preference/ListPreference;)V

    .line 66
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 67
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/android/settings/development/HdcpCheckingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/development/HdcpCheckingPreferenceController;->updateHdcpValues(Landroid/support/v7/preference/ListPreference;)V

    .line 73
    return-void
.end method
