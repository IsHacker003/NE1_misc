.class public abstract Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcSettingsAdapter.java"

# interfaces
.implements Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;
    .locals 2

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    const-string v0, "com.mediatek.nfcsettingsadapter.INfcSettingsAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-string v0, "com.mediatek.nfcsettingsadapter.INfcSettingsAdapter"

    .line 42
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 108
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    sget-object p1, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub;->commitServiceEntryList(Ljava/util/List;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v2

    .line 98
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    sget-object p1, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub;->testServiceEntryList(Ljava/util/List;)Z

    move-result p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return v2

    .line 88
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub;->getServiceEntryList(I)Ljava/util/List;

    move-result-object p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    return v2

    .line 80
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub;->isShowOverflowMenu()Z

    move-result p1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v2

    .line 72
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub;->isRoutingTableOverflow()Z

    move-result p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return v2

    .line 61
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub;->setModeFlag(II)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v2

    .line 51
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub;->getModeFlag(I)I

    move-result p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v2

    .line 46
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
