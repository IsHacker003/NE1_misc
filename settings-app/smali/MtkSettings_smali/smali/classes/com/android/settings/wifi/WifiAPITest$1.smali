.class Lcom/android/settings/wifi/WifiAPITest$1;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiAPITest;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiAPITest;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiAPITest$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 119
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/settings/wifi/WifiAPITest;->access$002(Lcom/android/settings/wifi/WifiAPITest;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    nop

    .line 125
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiAPITest;->access$100(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiAPITest;->access$000(Lcom/android/settings/wifi/WifiAPITest;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 126
    return-void

    .line 120
    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 123
    return-void
.end method
