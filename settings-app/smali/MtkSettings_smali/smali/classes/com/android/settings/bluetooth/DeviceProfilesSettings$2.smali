.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 337
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 338
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 339
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 340
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of p1, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of p1, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 347
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-static {p1, p2, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 348
    return-void
.end method
