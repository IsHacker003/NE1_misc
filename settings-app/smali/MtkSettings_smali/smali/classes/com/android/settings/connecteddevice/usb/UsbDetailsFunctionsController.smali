.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsFunctionsController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# static fields
.field static final FUNCTIONS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f120eba    # @string/usb_use_file_transfers 'File Transfer'

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f120ec0    # @string/usb_use_tethering 'USB tethering'

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f120eb5    # @string/usb_use_MIDI 'MIDI'

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f120ebd    # @string/usb_use_photo_transfers 'PTP'

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f120eb8    # @string/usb_use_charging_only 'No data transfer'

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 53
    return-void
.end method

.method private getProfilePreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    .line 66
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    .line 70
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 73
    :cond_0
    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 59
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 112
    const-string v0, "usb_details_functions"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 107
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 4

    .line 99
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 100
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    .line 103
    :cond_0
    return-void
.end method

.method protected refresh(ZJII)V
    .locals 4

    .line 78
    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-eq p5, p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1, p4}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 85
    :goto_1
    sget-object p1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 86
    sget-object p5, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 87
    invoke-static {v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->getProfilePreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object p5

    .line 89
    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_3

    :cond_2
    move v1, p4

    :goto_3
    invoke-virtual {p5, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    goto :goto_4

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, p5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 94
    :goto_4
    goto :goto_2

    .line 95
    :cond_4
    return-void
.end method
