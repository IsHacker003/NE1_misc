.class Lcom/android/settings/users/UserDetailsSettings$4;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserDetailsSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$4;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 260
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$4;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    .line 261
    return-void
.end method
