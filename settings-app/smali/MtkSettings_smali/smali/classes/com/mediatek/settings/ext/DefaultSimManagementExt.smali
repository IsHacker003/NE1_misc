.class public Lcom/mediatek/settings/ext/DefaultSimManagementExt;
.super Ljava/lang/Object;
.source "DefaultSimManagementExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISimManagementExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configSimPreferenceScreen(Landroid/support/v7/preference/Preference;Ljava/lang/String;I)V
    .locals 0

    .line 123
    return-void
.end method

.method public customBroadcast(Landroid/content/Intent;)V
    .locals 0

    .line 196
    return-void
.end method

.method public customRegisteBroadcast(Landroid/content/IntentFilter;)V
    .locals 0

    .line 199
    return-void
.end method

.method public customizeListArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    return-void
.end method

.method public customizeMainCapabily(ZI)V
    .locals 0

    .line 203
    return-void
.end method

.method public customizeSubscriptionInfoArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 73
    return-void
.end method

.method public getDefaultSmsClickContentExt(Ljava/util/List;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;II)I"
        }
    .end annotation

    .line 213
    return p3
.end method

.method public handleEvent(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/Context;Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 175
    return-void
.end method

.method public hideSimEditorView(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 40
    return-void
.end method

.method public initAutoItemForSms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 49
    return-void
.end method

.method public initPlugin(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    .line 167
    return-void
.end method

.method public initPrimarySim(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    .line 218
    return-void
.end method

.method public isNeedAskFirstItemForSms()Z
    .locals 1

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public isSimDialogNeeded()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .line 192
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 188
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 23
    return-void
.end method

.method public onPreferenceClick(Landroid/content/Context;)V
    .locals 0

    .line 222
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    .line 20
    return-void
.end method

.method public setCurrNetworkIcon(Landroid/widget/ImageView;II)V
    .locals 0

    .line 153
    return-void
.end method

.method public setDataState(I)V
    .locals 0

    .line 57
    return-void
.end method

.method public setDataStateEnable(I)V
    .locals 0

    .line 65
    return-void
.end method

.method public setDefaultCallValue(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 113
    return-object p1
.end method

.method public setDefaultSubId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 104
    return-object p2
.end method

.method public setPrefSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 161
    return-void
.end method

.method public setRadioPowerState(IZ)V
    .locals 0

    .line 94
    return-void
.end method

.method public setSmsAutoItemIcon(Landroid/widget/ImageView;II)V
    .locals 0

    .line 44
    return-void
.end method

.method public showChangeDataConnDialog(Landroid/support/v14/preference/PreferenceFragment;Z)V
    .locals 0

    .line 35
    return-void
.end method

.method public simDialogOnClick(IILandroid/content/Context;)Z
    .locals 0

    .line 143
    const/4 p1, 0x0

    return p1
.end method

.method public subChangeUpdatePrimarySIM()V
    .locals 0

    .line 226
    return-void
.end method

.method public updateDefaultSmsSummary(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 31
    return-void
.end method

.method public updateList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)V"
        }
    .end annotation

    .line 133
    return-void
.end method

.method public updatePrefState()V
    .locals 0

    .line 183
    return-void
.end method

.method public updateSimEditorPref(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    .line 26
    return-void
.end method

.method public useCtTestcard()Z
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method
