Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEDCC1F4D0
	for <lists+openipmi-developer@lfdr.de>; Thu, 30 Oct 2025 10:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kBx4yw/6zwf0SdY5oVBZiMbSeUUNmZ2z4UVS4YiTtJ8=; b=Y0PjglSf/ROD1YkGZC8N1fsdx9
	u+0wH2PX0XiQiiAOCcB5GI8VjYwAPA4OOQLQYVgkMnqBkr8NFs3eWrhj+T/KUTghj9Yhpa7NGICtz
	InqdpB8/eQZXg0xQ0u/NyHa/JZaK4UwI3JLZjQ4RFlpwdiLvFUT6JFHG44I80JRJrXDQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vEOzd-0005H8-MM;
	Thu, 30 Oct 2025 09:30:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <foo00@h08.hostsharing.net>) id 1vEOzb-0005H1-Mg
 for openipmi-developer@lists.sourceforge.net;
 Thu, 30 Oct 2025 09:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EMa7giXG5U4gdV8VYh//ekCYxzPkEbd4pBalXAab9mY=; b=MMYbvb3lwxrQmOop0xeJFYAHbR
 3YozxV8JIWPSE3K2/MDHB49UGDd8GciuwnCJ1UcL1jFR3hSHXE2CScpNjBPBVMcF463eKcWR1NRMd
 NKZR+5UH7/paeGDEEx+voFypvSFQxeZj+J36j4OU4yblADi3N/jHA4Zy5WTC68wQyYYk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EMa7giXG5U4gdV8VYh//ekCYxzPkEbd4pBalXAab9mY=; b=FyaDMnjfbmpTRtgoHw+qvL5DPr
 s15S0ZT7wL0axEOEOJOiSx+8vp+h9HNhkVNBuy3a2B0sicpTfNnysypwOyHIjc43UjEmAZDPhOj7N
 3Ur4KzWcdmQyTbK8WqdsEo/h2/BRsnzwyw8ZaH1s+HYH2vinmtfsKcw/I1ZSbGYg8lCE=;
Received: from bmailout1.hostsharing.net ([83.223.95.100])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vEOza-00027G-TY for openipmi-developer@lists.sourceforge.net;
 Thu, 30 Oct 2025 09:30:51 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by bmailout1.hostsharing.net (Postfix) with ESMTPS id CE5B42C07AA1;
 Thu, 30 Oct 2025 10:13:57 +0100 (CET)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id B882824B7; Thu, 30 Oct 2025 10:13:57 +0100 (CET)
Date: Thu, 30 Oct 2025 10:13:57 +0100
From: Lukas Wunner <lukas@wunner.de>
To: Tony Hutter <hutter2@llnl.gov>
Message-ID: <aQMsVUCBDF7ZUSK-@wunner.de>
References: <d485bd74-e49d-4c89-b986-1b45c93e7975@llnl.gov>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d485bd74-e49d-4c89-b986-1b45c93e7975@llnl.gov>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 08, 2025 at 04:48:22PM -0700, Tony Hutter wrote:
 > +++ b/Documentation/ABI/testing/sysfs-bus-pci > @@ -231, 6 +231,
 27 @@ Description:
 > - scXX contains the device subclass; > - iXX contains [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vEOza-00027G-TY
Subject: Re: [Openipmi-developer] [PATCH v6] Introduce Cray ClusterStor
 E1000 NVMe slot LED driver
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
Cc: minyard@acm.org, alok.a.tiwari@oracle.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, corey@minyard.net,
 Bjorn Helgaas <helgaas@kernel.org>, linux-pci@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Oct 08, 2025 at 04:48:22PM -0700, Tony Hutter wrote:
> +++ b/Documentation/ABI/testing/sysfs-bus-pci
> @@ -231,6 +231,27 @@ Description:
>  		    - scXX contains the device subclass;
>  		    - iXX contains the device class programming interface.
>  
> +What:		/sys/bus/pci/slots/.../attention
> +Date:		February 2025

Please update the "Date" timestamp to the month of submission to the list.

> +Contact:	linux-pci@vger.kernel.org
> +Description:
> +		The attention attribute is used to read or write the attention
> +		status for an enclosure slot.  This is often used to set the
> +		slot LED value on a NVMe storage enclosure.
> +
> +		Common values:
> +		0 = OFF
> +		1 = ON
> +		2 = blink (ampere, ibmphp, pciehp, rpaphp, shpchp)
> +
> +		Using the pciehp_craye1k extensions:
> +		0 = fault LED OFF, locate LED OFF
> +		1 = fault LED ON,  locate LED OFF
> +		2 = fault LED OFF, locate LED ON
> +		3 = fault LED ON,  locate LED ON

An end user might not be able to understand all these driver names,
so I'd omit "(ampere, ibmphp, pciehp, rpaphp, shpchp)",
and replace "pciehp_craye1k" with "Cray ClusterStor E1000".

> +++ b/drivers/pci/hotplug/pciehp_core.c
> @@ -73,6 +73,13 @@ static int init_slot(struct controller *ctrl)
>  		ops->get_attention_status = pciehp_get_raw_indicator_status;
>  		ops->set_attention_status = pciehp_set_raw_indicator_status;
>  	}
> +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> +	if (is_craye1k_slot(ctrl)) {
> +		/* slots 1-24 on Cray E1000s are controlled differently */
> +		ops->get_attention_status = craye1k_get_attention_status;
> +		ops->set_attention_status = craye1k_set_attention_status;
> +	}
> +#endif

Per section 21 of Documentation/process/coding-style.rst,
please avoid the use of #ifdef and instead add an #else section
to pciehp.h with an inline stub for is_craye1k_slot() which returns false
and #define craye1k_{get,set}_attention_status to NULL.

Do these hotplug slots on the Cray E1000 have the Attention Indicator
Present bit set in the Slot Capabilities register?  If they do not,
please use "if else" instead of "if".  Right now you're overwriting
the default {get,set}_attention_status pointers, which only makes
sense if ATTN_LED(ctrl) is true.

When is craye1k_new_smi() called?  Is it guaranteed to be called
before the first invocation of craye1k_{get,set}_attention_status()?

I'm asking because craye1k_{get,set}_attention_status() do not
contain any checks whether the craye1k_global struct has been
populated.  You would need such checks if craye1k_new_smi() may
run later than the "attention" attribute appearing in sysfs.

Actually craye1k_new_smi() may fail, e.g. because of kzalloc()
returning NULL, so I think you'll need additional checks in any case.
However if craye1k_new_smi() is guaranteed to run before init_slot(),
you could check for an uninitialized craye1k_global struct already in
is_craye1k_slot().

Note that just checking "craye1k_global == NULL" is insufficient as
craye1k_new_smi() might run concurrently to
craye1k_{get,set}_attention_status().

I note that is_craye1k_slot() calls dmi_match(), so you should add
"depends on DMI" to the Kconfig entry you're adding.

> @@ -376,8 +383,16 @@ int __init pcie_hp_init(void)
>  
>  	retval = pcie_port_service_register(&hpdriver_portdrv);
>  	pr_debug("pcie_port_service_register = %d\n", retval);
> -	if (retval)
> +	if (retval) {
>  		pr_debug("Failure to register service\n");
> +		return retval;
> +	}
> +
> +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> +	retval = craye1k_init();
> +	if (retval)
> +		pr_debug("Failure to register Cray E1000 extensions");
> +#endif

Another #ifdef that should be eliminated.

You also need to annotate craye1k_init() with __init.

> +++ b/drivers/pci/hotplug/pciehp_craye1k.c
[...]
> +#include <linux/debugfs.h>
> +#include <linux/delay.h>
> +#include <linux/errno.h>
> +#include <linux/dmi.h>
> +#include <linux/ipmi.h>
> +#include <linux/module.h>
> +#include <linux/pci.h>
> +#include <linux/pci_hotplug.h>
> +#include <linux/random.h>
> +#include "pciehp.h"

dmi.h isn't inserted in alphabetical order.

> +	/* debugfs stats */
> +	u64 check_primary;
> +	u64 check_primary_failed;
> +	u64 was_already_primary;
> +	u64 was_not_already_primary;
> +	u64 set_primary;
> +	u64 set_initial_primary_failed;
> +	u64 set_primary_failed;
> +	u64 set_led_locate_failed;
> +	u64 set_led_fault_failed;
> +	u64 set_led_readback_failed;
> +	u64 set_led_failed;
> +	u64 get_led_failed;
> +	u64 completion_timeout;
> +	u64 wrong_msgid;
> +	u64 request_failed;

I'm wondering if having all this debug code in mainline is useful?
Is the IPMI interface this brittle?  Was this just necessary
for initial development and may not be useful going forward?

> +static void craye1k_msg_handler(struct ipmi_recv_msg *msg, void *user_msg_data)
> +{
> +	struct craye1k *craye1k = user_msg_data;
> +
> +	if (msg->msgid != craye1k->tx_msg_id) {
> +		craye1k->wrong_msgid++;
> +		if (craye1k->print_errors) {
> +			dev_warn_ratelimited(craye1k->dev, "rx msgid %d != %d",
> +					     (int)msg->msgid,
> +					     (int)craye1k->tx_msg_id);

Why use casts instead of %ld in the format string?

> +static void craye1k_smi_gone(int iface)
> +{
> +	pr_warn("craye1k: Got unexpected smi_gone, iface=%d", iface);
> +}

Why not kfree() the craye1k struct here, tear down debugfs etc?

Thanks,

Lukas


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
