.class Lcust/settings/custRingtone/FihRingtonePickerActivity$3;
.super Ljava/lang/Object;
.source "FihRingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/custRingtone/FihRingtonePickerActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/custRingtone/FihRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcust/settings/custRingtone/FihRingtonePickerActivity;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity$3;->this$0:Lcust/settings/custRingtone/FihRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 481
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity$3;->this$0:Lcust/settings/custRingtone/FihRingtonePickerActivity;

    iget-object p2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity$3;->this$0:Lcust/settings/custRingtone/FihRingtonePickerActivity;

    invoke-static {p2}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->access$000(Lcust/settings/custRingtone/FihRingtonePickerActivity;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->access$100(Lcust/settings/custRingtone/FihRingtonePickerActivity;Landroid/net/Uri;)V

    .line 482
    return-void
.end method
