.class public Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "UsbDefaultFragment.java"


# instance fields
.field mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 71
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v5

    .line 76
    iget-object v6, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v6, v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    new-instance v2, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    goto :goto_0

    .line 95
    :cond_1
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDefaultUsbFunctions()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 59
    const/16 v0, 0x520

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 64
    const v0, 0x7f1500b0    # @xml/usb_default_fragment 'res/xml/usb_default_fragment.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 47
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 52
    new-instance p1, Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/widget/FooterPreferenceMixin;-><init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    .line 54
    const p2, 0x7f120e98    # @string/usb_default_info 'When another device is connected and your phone is unlocked, these settings will be applied. Only co ...'

    invoke-virtual {p1, p2}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 55
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    .line 105
    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 106
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDefaultUsbFunctions(J)V

    .line 109
    :cond_0
    const/4 p1, 0x1

    return p1
.end method
