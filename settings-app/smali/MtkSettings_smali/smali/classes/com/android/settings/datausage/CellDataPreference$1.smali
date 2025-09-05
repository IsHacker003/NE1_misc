.class Lcom/android/settings/datausage/CellDataPreference$1;
.super Ljava/lang/Object;
.source "CellDataPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/CellDataPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
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

    .line 259
    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$1;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$1;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/CellDataPreference;->performClick(Landroid/view/View;)V

    .line 263
    return-void
.end method
