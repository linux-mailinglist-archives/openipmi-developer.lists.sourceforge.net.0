Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF63D39EADC
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jun 2021 02:37:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqPke-0006Jy-4v; Tue, 08 Jun 2021 00:37:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lqPkc-0006Jk-Pu
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 00:37:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yBCq6nwjdfe7dMAcZu21nIyfwfagBbYE5SfivjE0NBU=; b=aoRoS3C+QxhWKXwRmSwtMWUYoW
 as9kYlTdJTkQjUSXp9gCE1HuZBeN/+XkMObVJpZJTaDMHtNIOVBrcV/jdaa8o9bL3rtuVmXAqbvS4
 hipjKW7poO4Uh3r8xcWnMw1aMcQW2DVVgjwANiYiim5uKRWPlVc4i1lMWJPTZ3oJ9obc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yBCq6nwjdfe7dMAcZu21nIyfwfagBbYE5SfivjE0NBU=; b=YhU05Vv35A/m6g/d4pMP2sJyQn
 N5XpOX6r9bXnxKEGOAaMClkv/yP63juXUTCJ4Aq6XARQ8GWL5n+pwnE0AICAPYBh57+y/D1+GMTK3
 B3ywe/hA/DX3LA0XROWF6dww79jN8HyWxUZ0dSEwxBd1gBHRr+yyvxQQEz2kGfYC8yhU=;
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqPkM-00H0KZ-LZ
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 00:37:51 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7906B5804E0;
 Mon,  7 Jun 2021 20:37:26 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
 by compute2.internal (MEProxy); Mon, 07 Jun 2021 20:37:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=yBCq6nwjdfe7dMAcZu21nIyfwfagBbY
 E5SfivjE0NBU=; b=QSG4Mf75bxuMOTWUpZLd9hfuWWOhffwrvIJdl565GGjCbHp
 FsU/7cSnExk40ZcBxkU4a9XkPl0iKlEToNVoHVXqwocPPeb4J2z/V4mePE6K915l
 pMDyg1rdAf6f2Gp/cne8qGMnf11FKyvOngVN9xB/8MZsA/X+ONPJT2G7Om+EnClz
 jDLcHbY9z/eYW47SNeudU3KIPsrHWjHkmxJuAFl0vrwJHmVcgQbV2dMr4f08IpRz
 Mf9n/fbCsLGUC7K5Z9FaGDcAEpMOei6t3Mo/a4SrMefdV1QZnQ2IMGvhNp0MdA0H
 9wdtpsOJ6VhgnsBYYluf/3ajcunepAc68MfqOJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=yBCq6n
 wjdfe7dMAcZu21nIyfwfagBbYE5SfivjE0NBU=; b=GKrgIZP3/n9Xx79RGsKT1O
 VGQqsMJlMsaYa05QKQjaSamCw1Qcsq5VsqpAuqzoc9bbrVO3IyuUj3bQR8vxzriI
 1CtRfjisuZ9kQN1eqcbwPWdm7sWd78RC9eSa6p86ZhHNZiOxzgUw+YAh7zBySiWp
 d2egvck1aaDulnz8IDLxXbSWae+Kp9KVtDSMH0pMnFzMUOafeSQ3Z9JqSWDUd3CI
 nUMc6IS1McTHctyxaOquHrq5yrlChOR1mibAZFLZeMNjaekwY2V/TrQ5Tkeb6Na4
 bxS6geXmDrFeE7/m5+DW4tBKjazd6FeBXFHHGw7b6/V9dDv3w1SXGOvmNmowayZQ
 ==
X-ME-Sender: <xms:xLu-YBopTqB2dHRusQmnc8xMm339jxIG5CGsr0RNHSTc8vFFZKnKZg>
 <xme:xLu-YDr4IjKNVs8Jojt5CbuO-cmePj0V7YnUjXwnhEn23hGBuv4llzhohHv1OP1CP
 7hDRnhjxuQq_7K82w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtkedgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
 hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:xbu-YOMkwNwc0C9j_2CKSsL2gtGPLkPlg3RxFQ25C-9uXyy9vFEb5w>
 <xmx:xbu-YM4SG7_n6L9M0g36gv1G2hhqsAplYKawS_XdFDI2DmbtQlDaNw>
 <xmx:xbu-YA7al-d1FCGZoyUpWS-4VJlLiOKyqrvsv4fg7Tj_UwdxmO7RjQ>
 <xmx:xru-YLK4_1AZSuHhbJYGcOqzqkiPLPBPQwHt3OmPim1BWdG1lTMWXw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id EE4F0AC0062; Mon,  7 Jun 2021 20:37:24 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-519-g27a961944e-fm-20210531.001-g27a96194
Mime-Version: 1.0
Message-Id: <15bfe16d-a9a1-464b-bb23-c59ac91b41a8@www.fastmail.com>
In-Reply-To: <YKdfP6br29Te0VZ6@packtop>
References: <20210510054213.1610760-1-andrew@aj.id.au>
 <20210510054213.1610760-12-andrew@aj.id.au> <YKdfP6br29Te0VZ6@packtop>
Date: Tue, 08 Jun 2021 10:07:03 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Zev Weiss" <zweiss@equinix.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lqPkM-00H0KZ-LZ
Subject: Re: [Openipmi-developer] [PATCH v3 11/16] ipmi: kcs_bmc: Add serio
 adaptor
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Corey Minyard <minyard@acm.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Benjamin Fair <benjaminfair@google.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Tomer Maimon <tmaimon77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Fri, 21 May 2021, at 16:50, Zev Weiss wrote:
> On Mon, May 10, 2021 at 12:42:08AM CDT, Andrew Jeffery wrote:
> >kcs_bmc_serio acts as a bridge between the KCS drivers in the IPMI
> >subsystem and the existing userspace interfaces available through the
> >serio subsystem. This is useful when userspace would like to make use of
> >the BMC KCS devices for purposes that aren't IPMI.
> >
> >Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> >---
> > drivers/char/ipmi/Kconfig         |  14 +++
> > drivers/char/ipmi/Makefile        |   1 +
> > drivers/char/ipmi/kcs_bmc_serio.c | 151 ++++++++++++++++++++++++++++++
> > 3 files changed, 166 insertions(+)
> > create mode 100644 drivers/char/ipmi/kcs_bmc_serio.c
> >
> >diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
> >index bc5f81899b62..249b31197eea 100644
> >--- a/drivers/char/ipmi/Kconfig
> >+++ b/drivers/char/ipmi/Kconfig
> >@@ -137,6 +137,20 @@ config IPMI_KCS_BMC_CDEV_IPMI
> > 	  This support is also available as a module. The module will be
> > 	  called kcs_bmc_cdev_ipmi.
> >
> >+config IPMI_KCS_BMC_SERIO
> >+	depends on IPMI_KCS_BMC && SERIO
> >+	tristate "SerIO adaptor for BMC KCS devices"
> >+	help
> >+	  Adapts the BMC KCS device for the SerIO subsystem. This allows users
> >+	  to take advantage of userspace interfaces provided by SerIO where
> >+	  appropriate.
> >+
> >+	  Say YES if you wish to expose KCS devices on the BMC via SerIO
> >+	  interfaces.
> >+
> >+	  This support is also available as a module. The module will be
> >+	  called kcs_bmc_serio.
> >+
> > config ASPEED_BT_IPMI_BMC
> > 	depends on ARCH_ASPEED || COMPILE_TEST
> > 	depends on REGMAP && REGMAP_MMIO && MFD_SYSCON
> >diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
> >index fcfa676afddb..84f47d18007f 100644
> >--- a/drivers/char/ipmi/Makefile
> >+++ b/drivers/char/ipmi/Makefile
> >@@ -23,6 +23,7 @@ obj-$(CONFIG_IPMI_POWERNV) += ipmi_powernv.o
> > obj-$(CONFIG_IPMI_WATCHDOG) += ipmi_watchdog.o
> > obj-$(CONFIG_IPMI_POWEROFF) += ipmi_poweroff.o
> > obj-$(CONFIG_IPMI_KCS_BMC) += kcs_bmc.o
> >+obj-$(CONFIG_IPMI_KCS_BMC_SERIO) += kcs_bmc_serio.o
> > obj-$(CONFIG_IPMI_KCS_BMC_CDEV_IPMI) += kcs_bmc_cdev_ipmi.o
> > obj-$(CONFIG_ASPEED_BT_IPMI_BMC) += bt-bmc.o
> > obj-$(CONFIG_ASPEED_KCS_IPMI_BMC) += kcs_bmc_aspeed.o
> >diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
> >new file mode 100644
> >index 000000000000..30a2b7ab464b
> >--- /dev/null
> >+++ b/drivers/char/ipmi/kcs_bmc_serio.c
> >@@ -0,0 +1,151 @@
> >+// SPDX-License-Identifier: GPL-2.0-or-later
> >+/* Copyright (c) 2021 IBM Corp. */
> >+
> >+#include <linux/delay.h>
> >+#include <linux/device.h>
> >+#include <linux/errno.h>
> >+#include <linux/list.h>
> >+#include <linux/module.h>
> >+#include <linux/sched/signal.h>
> >+#include <linux/serio.h>
> >+#include <linux/slab.h>
> >+
> >+#include "kcs_bmc_client.h"
> >+
> >+struct kcs_bmc_serio {
> >+	struct list_head entry;
> >+
> >+	struct kcs_bmc_client client;
> >+	struct serio *port;
> >+
> >+	spinlock_t lock;
> >+};
> >+
> >+static inline struct kcs_bmc_serio *client_to_kcs_bmc_serio(struct kcs_bmc_client *client)
> >+{
> >+	return container_of(client, struct kcs_bmc_serio, client);
> >+}
> >+
> >+static irqreturn_t kcs_bmc_serio_event(struct kcs_bmc_client *client)
> >+{
> >+	struct kcs_bmc_serio *priv;
> >+	u8 handled = IRQ_NONE;
> >+	u8 status;
> >+
> >+	priv = client_to_kcs_bmc_serio(client);
> >+
> >+	spin_lock(&priv->lock);
> >+
> >+	status = kcs_bmc_read_status(client->dev);
> >+
> >+	if (status & KCS_BMC_STR_IBF)
> >+		handled = serio_interrupt(priv->port, kcs_bmc_read_data(client->dev), 0);
> >+
> >+	spin_unlock(&priv->lock);
> >+
> >+	return handled;
> >+}
> >+
> >+static const struct kcs_bmc_client_ops kcs_bmc_serio_client_ops = {
> >+	.event = kcs_bmc_serio_event,
> >+};
> >+
> >+static int kcs_bmc_serio_open(struct serio *port)
> >+{
> >+	struct kcs_bmc_serio *priv = port->port_data;
> >+
> >+	return kcs_bmc_enable_device(priv->client.dev, &priv->client);
> >+}
> >+
> >+static void kcs_bmc_serio_close(struct serio *port)
> >+{
> >+	struct kcs_bmc_serio *priv = port->port_data;
> >+
> >+	kcs_bmc_disable_device(priv->client.dev, &priv->client);
> >+}
> >+
> >+static DEFINE_SPINLOCK(kcs_bmc_serio_instances_lock);
> >+static LIST_HEAD(kcs_bmc_serio_instances);
> >+
> >+static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
> >+{
> >+	struct kcs_bmc_serio *priv;
> >+	struct serio *port;
> >+
> >+	priv = devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
> >+	port = kzalloc(sizeof(*port), GFP_KERNEL);
> 
> Is there a particular reason to allocate port with a raw kzalloc()
> instead of another devm_kzalloc()?

Yes, because it causes pointer confusion on remove. We get the following backtrace:

[   95.018845] Backtrace: 
[   95.019162] [<802e1fb0>] (___cache_free) from [<802e31cc>] (kfree+0xc0/0x1e8)
[   95.019658]  r10:00000081 r9:8667c000 r8:80100284 r7:81000b40 r6:a0000013 r5:80640bd4
[   95.020032]  r4:82a5ec40
[   95.020206] [<802e310c>] (kfree) from [<80640bd4>] (serio_release_port+0x1c/0x28)
[   95.020571]  r7:00000000 r6:819c1540 r5:86acf480 r4:82a5ed70
[   95.020818] [<80640bb8>] (serio_release_port) from [<80565e00>] (device_release+0x40/0xb4)
[   95.021387] [<80565dc0>] (device_release) from [<804a0bcc>] (kobject_put+0xc8/0x210)
[   95.021961]  r5:80c77c30 r4:82a5ed70
[   95.022141] [<804a0b04>] (kobject_put) from [<80566078>] (put_device+0x20/0x24)
[   95.022537]  r7:80c820cc r6:82a5ec40 r5:80c820e4 r4:82a5ed70
[   95.023017] [<80566058>] (put_device) from [<80640a58>] (serio_destroy_port+0x12c/0x140)
[   95.023719] [<8064092c>] (serio_destroy_port) from [<80640b3c>] (serio_unregister_port+0x34/0x44)
[   95.024326]  r7:7f0012b4 r6:7f002024 r5:80c820e4 r4:82a5ec40
[   95.024792] [<80640b08>] (serio_unregister_port) from [<7f0100b8>] (kcs_bmc_serio_remove_device+0x90/0xbc [kcs_bmc_serio])
[   95.026951]  r5:8668b7c0 r4:86acf0c0
[   95.027390] [<7f010028>] (kcs_bmc_serio_remove_device [kcs_bmc_serio]) from [<7f00048c>] (kcs_bmc_unregister_driver+0x60/0xbd4 [kcs_bmc])
[   95.028443]  r5:7f012018 r4:8668b7c0
[   95.028634] [<7f00042c>] (kcs_bmc_unregister_driver [kcs_bmc]) from [<7f0102c4>] (kcs_bmc_serio_exit+0x1c/0xd58 [kcs_bmc_serio])
[   95.029165]  r7:00000081 r6:80cd0dac r5:00000000 r4:7f012040
[   95.029397] [<7f0102a8>] (kcs_bmc_serio_exit [kcs_bmc_serio]) from [<801cbab0>] (sys_delete_module+0x140/0x280)
[   95.029875] [<801cb970>] (sys_delete_module) from [<80100080>] (ret_fast_syscall+0x0/0x58)

> 
> >+	if (!(priv && port))
> >+		return -ENOMEM;
> >+
> >+	port->id.type = SERIO_8042;
> >+	port->open = kcs_bmc_serio_open;
> >+	port->close = kcs_bmc_serio_close;
> >+	port->port_data = priv;
> >+	port->dev.parent = kcs_bmc->dev;
> >+
> >+	spin_lock_init(&priv->lock);
> >+	priv->port = port;
> >+	priv->client.dev = kcs_bmc;
> >+	priv->client.ops = &kcs_bmc_serio_client_ops;
> >+
> >+	spin_lock_irq(&kcs_bmc_serio_instances_lock);
> >+	list_add(&priv->entry, &kcs_bmc_serio_instances);
> >+	spin_unlock_irq(&kcs_bmc_serio_instances_lock);
> >+
> >+	serio_register_port(port);
> >+
> >+	dev_info(kcs_bmc->dev, "Initialised serio client for channel %d", kcs_bmc->channel);
> >+
> >+	return 0;
> >+}
> >+
> >+static int kcs_bmc_serio_remove_device(struct kcs_bmc_device *kcs_bmc)
> >+{
> >+	struct kcs_bmc_serio *priv = NULL, *pos;
> >+
> >+	spin_lock_irq(&kcs_bmc_serio_instances_lock);
> >+	list_for_each_entry(pos, &kcs_bmc_serio_instances, entry) {
> >+		if (pos->client.dev == kcs_bmc) {
> >+			priv = pos;
> >+			list_del(&pos->entry);
> >+			break;
> >+		}
> >+	}
> >+	spin_unlock_irq(&kcs_bmc_serio_instances_lock);
> >+
> >+	if (!priv)
> >+		return -ENODEV;
> >+
> >+	serio_unregister_port(priv->port);
> >+	kcs_bmc_disable_device(kcs_bmc, &priv->client);
> >+	devm_kfree(priv->client.dev->dev, priv);
> 
> Looks like the priv->port allocation would leak here I think?

No, because port's released through serio_unregister_port(). It's not super obvious though, so I'll add a comment next to the kzalloc().

> 
> Also, is the asymmetry of having kcs_bmc_disable_device() here but no
> corresponding kcs_bmc_enable_device() in kcs_bmc_serio_add_device()
> intentional?  If so, an explanatory comment of some sort might be nice
> to add.

It's intentional to make sure the device isn't left registered as enabled in the core. kcs_bmc_enable_device() is called in the open() path.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
