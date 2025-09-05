.class Lcom/android/settings/sim/SimDialogActivity$3;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->displayPreferredDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$3;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$3;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {p1}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 190
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$3;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {p1}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 191
    return-void
.end method
