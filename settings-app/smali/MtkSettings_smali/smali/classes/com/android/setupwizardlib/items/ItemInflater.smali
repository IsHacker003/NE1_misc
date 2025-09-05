.class public Lcom/android/setupwizardlib/items/ItemInflater;
.super Lcom/android/setupwizardlib/items/ReflectionInflater;
.source "ItemInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/setupwizardlib/items/ReflectionInflater<",
        "Lcom/android/setupwizardlib/items/ItemHierarchy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ReflectionInflater;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/android/setupwizardlib/items/Item;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemInflater;->setDefaultPackage(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onAddChildItem(Lcom/android/setupwizardlib/items/ItemHierarchy;Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 2

    .line 37
    instance-of v0, p1, Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;

    invoke-interface {p1, p2}, Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;->addChild(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot add child item to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected bridge synthetic onAddChildItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/android/setupwizardlib/items/ItemHierarchy;

    check-cast p2, Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/items/ItemInflater;->onAddChildItem(Lcom/android/setupwizardlib/items/ItemHierarchy;Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    return-void
.end method
