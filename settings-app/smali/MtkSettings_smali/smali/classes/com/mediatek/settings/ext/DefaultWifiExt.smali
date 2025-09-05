.class public Lcom/mediatek/settings/ext/DefaultWifiExt;
.super Ljava/lang/Object;
.source "DefaultWifiExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWifiExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mediatek/settings/ext/DefaultWifiExt;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public addDisconnectButton(Landroid/app/AlertDialog;ZLandroid/net/NetworkInfo$DetailedState;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 39
    return-void
.end method

.method public addPreferenceController(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 80
    return-void
.end method

.method public createWifiPreferenceController(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEapMethodbySpinnerPos(ILjava/lang/String;I)I
    .locals 0

    .line 67
    return p1
.end method

.method public getPosByEapMethod(ILjava/lang/String;I)I
    .locals 0

    .line 71
    return p1
.end method

.method public getPriority(I)I
    .locals 0

    .line 41
    return p1
.end method

.method public hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V
    .locals 0

    .line 61
    return-void
.end method

.method public initConnectView(Landroid/app/Activity;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 47
    return-void
.end method

.method public initNetworkInfoView(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 50
    return-void
.end method

.method public initPreference(Landroid/content/ContentResolver;)V
    .locals 0

    .line 54
    return-void
.end method

.method public refreshNetworkInfoView()V
    .locals 0

    .line 52
    return-void
.end method

.method public setAPNetworkId(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 29
    return-void
.end method

.method public setAPPriority(I)V
    .locals 0

    .line 31
    return-void
.end method

.method public setEapMethodArray(Landroid/widget/ArrayAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 63
    return-void
.end method

.method public setPriorityView(Landroid/widget/LinearLayout;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 0

    .line 34
    return-void
.end method

.method public setProxyText(Landroid/widget/TextView;)V
    .locals 0

    .line 44
    return-void
.end method

.method public setSecurityText(Landroid/widget/TextView;)V
    .locals 0

    .line 36
    return-void
.end method

.method public setSleepPolicyPreference(Landroid/support/v7/preference/ListPreference;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 57
    return-void
.end method
