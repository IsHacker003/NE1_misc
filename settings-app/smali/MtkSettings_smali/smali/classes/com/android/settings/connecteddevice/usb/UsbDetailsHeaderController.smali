.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsHeaderController.java"


# instance fields
.field private mHeaderController:Lcom/android/settings/widget/EntityHeaderController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 37
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 42
    const-string v0, "usb_device_header"

    .line 43
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/LayoutPreference;

    .line 44
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    .line 45
    const v2, 0x7f0a0136    # @id/entity_header

    invoke-virtual {p1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 44
    invoke-static {v0, v1, p1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 46
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "usb_device_header"

    return-object v0
.end method

.method protected refresh(ZJII)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mContext:Landroid/content/Context;

    const p3, 0x7f120e9e    # @string/usb_pref 'USB'

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 52
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mContext:Landroid/content/Context;

    const p3, 0x7f0801a8    # @drawable/ic_usb 'res/drawable/ic_usb.xml'

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    .line 53
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 54
    return-void
.end method
