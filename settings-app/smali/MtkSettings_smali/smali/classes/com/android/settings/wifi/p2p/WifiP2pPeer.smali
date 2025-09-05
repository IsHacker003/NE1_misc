.class public Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.super Landroid/support/v7/preference/Preference;
.source "WifiP2pPeer.java"


# static fields
.field private static final STATE_SECURED:[I


# instance fields
.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mRssi:I

.field private mSignal:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040158    # @attr/state_encrypted

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->STATE_SECURED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 41
    const p2, 0x7f0d010f    # @layout/preference_widget_wifi_signal 'res/layout/preference_widget_wifi_signal.xml'

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setWidgetLayoutResource(I)V

    .line 42
    const/16 p2, 0x3c

    iput p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mRssi:I

    .line 43
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 44
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0300b4    # @array/wifi_p2p_status

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget p2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 3

    .line 67
    instance-of v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 68
    return v1

    .line 70
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v2, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v0, v2, :cond_2

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v0, p1, :cond_1

    const/4 v1, -0x1

    nop

    :cond_1
    return v1

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method getLevel()I
    .locals 2

    .line 86
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v0, -0x1

    return v0

    .line 89
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 55
    const v0, 0x7f0a030a    # @id/signal

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    .line 56
    iget p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mRssi:I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 57
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    const v0, 0x7f080215    # @drawable/wifi_signal_dark 'res/drawable/wifi_signal_dark.xml'

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->STATE_SECURED:[I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 62
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 63
    return-void
.end method
