Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 990217E0395
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 14:14:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qytzr-0001jd-KM;
	Fri, 03 Nov 2023 13:13:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qynlk-0007PR-V6
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ez+jYppJpUXtgGRwawEysVa+FEBxXGvdBY0x8TXWRE=; b=NM2+3dDUi4cksLx6B8BcstV33c
 c9Ai93j3v3SlthlRmqxQAb8cd5Esxf58ayqAIsBgaDHj9lJPVi/9m8H1r1KF5JxUr+dIzESvP5OEx
 AxOW6v1NGgkYcZ6wJn6xVbIKamj9zMEm6KV/fk8i/HEDIZBa/tAULs95id3iDH5MDick=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9ez+jYppJpUXtgGRwawEysVa+FEBxXGvdBY0x8TXWRE=; b=jZsmlLNrBs1woQAUcsQ1zv/WpA
 EnBM64P1vN9DfhhA3kiqJXdP58+Jh7S0foZ+psJ7kw6vvAJ0yjPGL5v6Ff3VBdvc5nYD9W/U4e3SL
 7xrYYG73ts109IqihQGIV3WVNjfEUNndJ1bYuG/F+BCrgI5pAClAN1i18qKdOw7Rfvkg=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qynlf-0005Jh-Sn for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:35:00 +0000
Received: from localhost.localdomain
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id D7E6720247;
 Fri,  3 Nov 2023 14:15:44 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1698992145;
 bh=9ez+jYppJpUXtgGRwawEysVa+FEBxXGvdBY0x8TXWRE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=RAx4SnvKH25eUYMO5wBc+ayPe3Uf32X7ELXscZw5i4NqybpqA9w7aqfk6g561Upsd
 Pndm6HIGA0eRspCy/fLPIygIBjALf7RhE+ixDa2jh7nL7FseVWsoeVdeMcEkxi9kTb
 6Ti9cSEz1r62CUvhnSWvSBOwoDCioj10mKbW+wYWatkwUbcuBKdwMUtOswROMHigMZ
 pt/92xwGyzBgw58gbg/v/crdOK2+2618wvpuTzhecp6ftsJ39eJmubV/Zos7MN8pve
 5uPNy86QcKnKjdn2VWkPUBIpy+S3KEpa88/dKALpk9kmUsOMlPeOfiI0Cpl0vl6dmR
 gWh2ScApilkeg==
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: minyard@acm.org,
	openipmi-developer@lists.sourceforge.net
Date: Fri,  3 Nov 2023 16:45:22 +1030
Message-Id: <20231103061522.1268637-11-andrew@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Provide kerneldoc describing the relationships between and
 the behaviours of the structures and functions of the KCS subsystem.
 Signed-off-by:
 Andrew Jeffery <andrew@codeconstruct.com.au> --- drivers/char/ipmi/kcs_bmc.h
 | 39 ++++++++ drivers/char/ipmi/kcs_bmc_client.h | 151
 +++++++++++++++++++++++++++++ drivers/char/ipmi/kcs_b [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qynlf-0005Jh-Sn
X-Mailman-Approved-At: Fri, 03 Nov 2023 13:13:55 +0000
Subject: [Openipmi-developer] [PATCH 10/10] ipmi: kcs_bmc: Add subsystem
 kerneldoc
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: jk@codeconstruct.com.au, aladyshev22@gmail.com,
 linux-kernel@vger.kernel.org, Jonathan.Cameron@Huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Provide kerneldoc describing the relationships between and the
behaviours of the structures and functions of the KCS subsystem.

Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
---
 drivers/char/ipmi/kcs_bmc.h        |  39 ++++++++
 drivers/char/ipmi/kcs_bmc_client.h | 151 +++++++++++++++++++++++++++++
 drivers/char/ipmi/kcs_bmc_device.h |  40 ++++++++
 3 files changed, 230 insertions(+)

diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
index 979d673f8f56..69eee539ec50 100644
--- a/drivers/char/ipmi/kcs_bmc.h
+++ b/drivers/char/ipmi/kcs_bmc.h
@@ -10,6 +10,36 @@
 #include <linux/module.h>
 #include <linux/spinlock.h>
 
+/**
+ * DOC: KCS subsystem structure
+ *
+ * The KCS subsystem is split into three components:
+ *
+ * 1. &struct kcs_bmc_device
+ * 2. &struct kcs_bmc_driver
+ * 3. &struct kcs_bmc_client
+ *
+ * ``struct kcs_bmc_device`` (device) represents a driver instance for a
+ * particular KCS device. ``struct kcs_bmc_device``` abstracts away the device
+ * specifics allowing for device-independent implementation of protocols over
+ * KCS.
+ *
+ * ``struct kcs_bmc_driver`` (driver) represents an implementation of a KCS
+ * protocol. Implementations of a protocol either expose this behaviour out to
+ * userspace via a character device, or provide the glue into another kernel
+ * subsystem.
+ *
+ * ``struct kcs_bmc_client`` (client) associates a ``struct kcs_bmc_device``
+ * instance (``D``) with a &struct kcs_bmc_driver instance (``P``). An instance
+ * of each protocol implementation is associated with each device, yielding
+ * ``D*P`` client instances.
+ *
+ * A device may only have one active client at a time. A client becomes active
+ * on its associated device whenever userspace "opens" its interface in some
+ * fashion, for example, opening a character device. If the device associated
+ * with a client already has an active client then an error is propagated.
+ */
+
 #define KCS_BMC_EVENT_TYPE_OBE	BIT(0)
 #define KCS_BMC_EVENT_TYPE_IBF	BIT(1)
 
@@ -31,6 +61,15 @@ struct kcs_ioreg {
 struct kcs_bmc_device_ops;
 struct kcs_bmc_client;
 
+/**
+ * struct kcs_bmc_device - An abstract representation of a KCS device
+ * @entry: A list node for the KCS core to track KCS device instances
+ * @dev: The kernel device object for the KCS hardware
+ * @channel: The IPMI channel number for the KCS device
+ * @ops: A set of callbacks for providing abstract access to the KCS hardware
+ * @lock: Protects accesses to, and operations on &kcs_bmc_device.client
+ * @client: The client instance, if any, currently associated with the device
+ */
 struct kcs_bmc_device {
 	struct list_head entry;
 
diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
index afc9e71c9fc0..8ccaaf10c10e 100644
--- a/drivers/char/ipmi/kcs_bmc_client.h
+++ b/drivers/char/ipmi/kcs_bmc_client.h
@@ -11,10 +11,24 @@
 
 struct kcs_bmc_driver;
 
+/**
+ * struct kcs_bmc_client_ops - Callbacks operating on a client instance
+ * @event: A notification to the client that the device has an active interrupt
+ */
 struct kcs_bmc_client_ops {
 	irqreturn_t (*event)(struct kcs_bmc_client *client);
 };
 
+/**
+ * struct kcs_bmc_client - Associates a KCS protocol implementation with a KCS device
+ * @ops: A set of callbacks for handling client events
+ * @drv: The KCS protocol implementation associated with the client instance
+ * @dev: The KCS device instance associated with the client instance
+ * @entry: A list node for the KCS core to track KCS client instances
+ *
+ * A ``struct kcs_bmc_client`` should be created for each device added via
+ * &kcs_bmc_driver_ops.add_device
+ */
 struct kcs_bmc_client {
 	const struct kcs_bmc_client_ops *ops;
 
@@ -23,12 +37,32 @@ struct kcs_bmc_client {
 	struct list_head entry;
 };
 
+/**
+ * struct kcs_bmc_driver_ops - KCS device lifecycle operations for a KCS protocol driver
+ * @add_device: A new device has appeared, a client instance is to be created
+ * @remove_device: A known device has been removed - a client instance should be destroyed
+ */
 struct kcs_bmc_driver_ops {
 	struct kcs_bmc_client *(*add_device)(struct kcs_bmc_driver *drv,
 					     struct kcs_bmc_device *dev);
 	void (*remove_device)(struct kcs_bmc_client *client);
 };
 
+/**
+ * kcs_bmc_client_init() - Initialise an instance of &struct kcs_bmc_client
+ * @client: The &struct kcs_bmc_client instance of interest, usually embedded in
+ *          an instance-private struct
+ * @ops: The &struct kcs_bmc_client_ops relevant for @client
+ * @drv: The &struct kcs_bmc_driver instance relevant for @client
+ * @dev: The &struct kcs_bmc_device instance relevant for @client
+ *
+ * It's intended that kcs_bmc_client_init() is invoked in the @add_device
+ * callback for the protocol driver where the protocol-private data is
+ * initialised for the new device instance. The function is provided to make
+ * sure that all required fields are initialised.
+ *
+ * Context: Any context
+ */
 static inline void kcs_bmc_client_init(struct kcs_bmc_client *client,
 				       const struct kcs_bmc_client_ops *ops,
 				       struct kcs_bmc_driver *drv,
@@ -39,24 +73,141 @@ static inline void kcs_bmc_client_init(struct kcs_bmc_client *client,
 	client->dev = dev;
 }
 
+/**
+ * struct kcs_bmc_driver - An implementation of a protocol run over a KCS channel
+ * @entry: A list node for the KCS core to track KCS protocol drivers
+ * @ops: A set of callbacks for handling device lifecycle events for the protocol driver
+ */
 struct kcs_bmc_driver {
 	struct list_head entry;
 
 	const struct kcs_bmc_driver_ops *ops;
 };
 
+/**
+ * kcs_bmc_register_driver() - Register a KCS protocol driver with the KCS subsystem
+ * @drv: The &struct kcs_bmc_driver instance to register
+ *
+ * Generally only invoked on module init.
+ *
+ * Context: Process context. Takes and releases the internal KCS subsystem mutex.
+ *
+ * Return: 0 on succes.
+ */
 int kcs_bmc_register_driver(struct kcs_bmc_driver *drv);
+
+/**
+ * kcs_bmc_unregister_driver() - Unregister a KCS protocol driver with the KCS
+ *                               subsystem
+ * @drv: The &struct kcs_bmc_driver instance to unregister
+ *
+ * Generally only invoked on module exit.
+ *
+ * Context: Process context. Takes and releases the internal KCS subsystem mutex.
+ */
 void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv);
 
+/**
+ * module_kcs_bmc_driver() - Helper macro for registering a module KCS protocol driver
+ * @__kcs_bmc_driver: A ``struct kcs_bmc_driver``
+ *
+ * Helper macro for KCS protocol drivers which do not do anything special in
+ * module init/exit. This eliminates a lot of boilerplate. Each module may only
+ * use this macro once, and calling it replaces module_init() and module_exit()
+ */
 #define module_kcs_bmc_driver(__kcs_bmc_driver) \
 	module_driver(__kcs_bmc_driver, kcs_bmc_register_driver, \
 		kcs_bmc_unregister_driver)
 
+/**
+ * kcs_bmc_enable_device() - Prepare a KCS device for active use
+ * @client: The client whose KCS device should be enabled
+ *
+ * A client should enable its associated KCS device when the userspace
+ * interface for the client is "opened" in some fashion. Enabling the KCS device
+ * associates the client with the device and enables interrupts on the hardware.
+ *
+ * Context: Process context. Takes and releases ``client->dev->lock``
+ *
+ * Return: 0 on success, or -EBUSY if a client is already associated with the
+ *         device
+ */
 int kcs_bmc_enable_device(struct kcs_bmc_client *client);
+
+/**
+ * kcs_bmc_disable_device() - Remove a KCS device from active use
+ * @client: The client whose KCS device should be disabled
+ *
+ * A client should disable its associated KCS device when the userspace
+ * interface for the client is "closed" in some fashion. The client is
+ * disassociated from the device iff it was the active client. If the client is
+ * disassociated then interrupts are disabled on the hardware.
+ *
+ * Context: Process context. Takes and releases ``client->dev->lock``.
+ */
 void kcs_bmc_disable_device(struct kcs_bmc_client *client);
+
+/**
+ * kcs_bmc_read_data() - Read the Input Data Register (IDR) on a KCS device
+ * @client: The client whose device's IDR should be read
+ *
+ * Must only be called on a client that is currently active on its associated
+ * device.
+ *
+ * Context: Any context. Any spinlocks taken are also released.
+ *
+ * Return: The value of IDR
+ */
 u8 kcs_bmc_read_data(struct kcs_bmc_client *client);
+
+/**
+ * kcs_bmc_write_data() - Write the Output Data Register (ODR) on a KCS device
+ * @client: The client whose device's ODR should be written
+ * @data: The value to write to ODR
+ *
+ * Must only be called on a client that is currently active on its associated
+ * device.
+ *
+ * Context: Any context. Any spinlocks taken are also released.
+ */
 void kcs_bmc_write_data(struct kcs_bmc_client *client, u8 data);
+
+/**
+ * kcs_bmc_read_status() - Read the Status Register (STR) on a KCS device
+ * @client: The client whose device's STR should be read
+ *
+ * Must only be called on a client that is currently active on its associated
+ * device.
+ *
+ * Context: Any context. Any spinlocks taken are also released.
+ *
+ * Return: The value of STR
+ */
 u8 kcs_bmc_read_status(struct kcs_bmc_client *client);
+
+/**
+ * kcs_bmc_write_status() - Write the Status Register (STR) on a KCS device
+ * @client: The client whose device's STR should be written
+ * @data: The value to write to STR
+ *
+ * Must only be called on a client that is currently active on its associated
+ * device.
+ *
+ * Context: Any context. Any spinlocks taken are also released.
+ */
 void kcs_bmc_write_status(struct kcs_bmc_client *client, u8 data);
+
+/**
+ * kcs_bmc_update_status() - Update Status Register (STR) on a KCS device
+ * @client: The client whose device's STR should be updated
+ * @mask: A bit-mask defining the field in STR that should be updated
+ * @val: The new value of the field, specified in the position of the bit-mask
+ *       defined by @mask
+ *
+ * Must only be called on a client that is currently active on its associated
+ * device.
+ *
+ * Context: Any context. Any spinlocks taken are also released.
+ */
 void kcs_bmc_update_status(struct kcs_bmc_client *client, u8 mask, u8 val);
 #endif
diff --git a/drivers/char/ipmi/kcs_bmc_device.h b/drivers/char/ipmi/kcs_bmc_device.h
index ca2b5dc2031d..b17171d1c981 100644
--- a/drivers/char/ipmi/kcs_bmc_device.h
+++ b/drivers/char/ipmi/kcs_bmc_device.h
@@ -8,6 +8,13 @@
 
 #include "kcs_bmc.h"
 
+/**
+ * struct kcs_bmc_device_ops - Callbacks operating on a KCS device
+ * @irq_mask_update: Update the set of events of interest
+ * @io_inputb: A callback to read the specified KCS register from hardware
+ * @io_outputb: A callback to write the specified KCS register to hardware
+ * @io_updateb: A callback to update a subfield of the specified KCS register
+ */
 struct kcs_bmc_device_ops {
 	void (*irq_mask_update)(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 enable);
 	u8 (*io_inputb)(struct kcs_bmc_device *kcs_bmc, u32 reg);
@@ -15,8 +22,41 @@ struct kcs_bmc_device_ops {
 	void (*io_updateb)(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 mask, u8 b);
 };
 
+/**
+ * kcs_bmc_handle_event() - Notify the active client of a hardware interrupt
+ * @kcs_bmc: The device instance whose interrupt was triggered
+ *
+ * Propagate a hardware interrupt as an event to the active client. The client's
+ * handler should take any necessary actions for the protocol it implements, but
+ * must read IDR to resolve the interrupt if the interrupt was generated by the
+ * KCS device.
+ *
+ * Context: Interrupt context. Takes and releases &kcs_bmc_device.lock.
+ *
+ * Return: An irqreturn_t value indicating whether the interrupt was handled.
+ */
 irqreturn_t kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc);
+
+/**
+ * kcs_bmc_add_device() - Register a KCS device instance with the KCS subsystem
+ * @dev: The &struct kcs_bmc_device instance to register
+ *
+ * Should be called by the probe() implementation of the KCS hardware's driver.
+ *
+ * Context: Process context. Takes and releases the internal KCS subsystem mutex.
+ *
+ * Return: 0 on success, or a negative errno on failure.
+ */
 int kcs_bmc_add_device(struct kcs_bmc_device *dev);
+
+/**
+ * kcs_bmc_remove_device() - Unregister a KCS device instance with the KCS subsystem
+ * @dev: The &struct kcs_bmc_device instance to unregister
+ *
+ * Should be called by the remove() implementation of the KCS hardware's driver.
+ *
+ * Context: Process context. Takes and releases the internal KCS subsystem mutex.
+ */
 void kcs_bmc_remove_device(struct kcs_bmc_device *dev);
 
 #endif
-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
