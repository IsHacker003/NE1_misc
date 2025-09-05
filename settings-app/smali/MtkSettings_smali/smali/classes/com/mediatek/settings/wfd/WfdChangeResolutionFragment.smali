.class public final Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;
.super Landroid/app/DialogFragment;
.source "WfdChangeResolutionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCurrentResolution:I

.field private mWhichIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mCurrentResolution:I

    .line 59
    iput v0, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mWhichIndex:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 79
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 80
    sget-object p1, Lcom/mediatek/settings/wfd/WfdChangeResolution;->DEVICE_RESOLUTION_LIST:Ljava/util/ArrayList;

    iget p2, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mWhichIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 81
    const-string p2, "@M_WfdChangeResolutionFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User click ok button, set resolution as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "wifi_display_max_resolution"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iput p2, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mWhichIndex:I

    .line 87
    const-string p1, "@M_WfdChangeResolutionFragment"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User select the item "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mWhichIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_display_max_resolution"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mCurrentResolution:I

    .line 65
    const-string p1, "@M_WfdChangeResolutionFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create dialog, current resolution is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mCurrentResolution:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    nop

    .line 68
    sget-object p1, Lcom/mediatek/settings/wfd/WfdChangeResolution;->DEVICE_RESOLUTION_LIST:Ljava/util/ArrayList;

    iget v0, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mCurrentResolution:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 69
    iput p1, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mWhichIndex:I

    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    const v1, 0x7f120fa5    # @string/wfd_change_resolution_menu_title 'Change resolution'

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    const v1, 0x7f03009d    # @array/wfd_resolution_entry

    invoke-virtual {v0, v1, p1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 74
    const v0, 0x104000a    # @android:string/ok

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 70
    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 93
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 94
    sget-object v0, Lcom/mediatek/settings/wfd/WfdChangeResolution;->DEVICE_RESOLUTION_LIST:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mCurrentResolution:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->dismiss()V

    .line 97
    :cond_0
    return-void
.end method
