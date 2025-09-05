.class Lcom/android/settings/datausage/CellDataPreference$3;
.super Lcom/android/settings/datausage/CellDataPreference$DataStateListener;
.source "CellDataPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CellDataPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$3;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 360
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$3;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    const-string v0, "data state changed"

    invoke-static {p1, v0}, Lcom/android/settings/datausage/CellDataPreference;->access$100(Lcom/android/settings/datausage/CellDataPreference;Ljava/lang/String;)V

    .line 361
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$3;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {p1}, Lcom/android/settings/datausage/CellDataPreference;->access$200(Lcom/android/settings/datausage/CellDataPreference;)V

    .line 362
    return-void
.end method
