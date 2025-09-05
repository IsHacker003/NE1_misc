.class Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 132
    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 133
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->access$000(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 135
    const/4 p1, 0x1

    return p1

    .line 137
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
