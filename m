Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 868F4C1F61A
	for <lists+openipmi-developer@lfdr.de>; Thu, 30 Oct 2025 10:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NVGDkELn6Zz55Q86rJEf3p+4Gx2paFh9hAHQLntfP80=; b=Js7tBvDPijUKjPScFmVvsjDl6u
	/mscZd+A+5/AHnXSxU0gAH4hZPxffMHcesasI458DO8JjQqYJatSNwFwszqQEFji4O4vAyVdUMeMW
	IFU6kymRYVvU1dxshEd3Bn5L0LZ0I4ALssrxuL9ObZCt7rmLoqyRIe5x630AL7UI/g0w=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vEPGa-0001xK-CW;
	Thu, 30 Oct 2025 09:48:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <foo00@h08.hostsharing.net>) id 1vEPGY-0001wp-RY
 for openipmi-developer@lists.sourceforge.net;
 Thu, 30 Oct 2025 09:48:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JhN/LMD6U6T9VIvC14WqQB8VCD+9giqBBuDAryxWydk=; b=mUI/2f36wESry+oXAVbh51anuq
 A6iZutwVTiGL1QgfaWORKRWnEC5RvkRFQeekvkwxR0AhT9dt9FW0zghFtMnter5QEHLd2Uum6G2lg
 XT0am1TFfDAz5AEamW/0IP1K43CPII7pfqJhUDud+0+qoPGjfx4w+7TGJxBSL/DrzrKQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JhN/LMD6U6T9VIvC14WqQB8VCD+9giqBBuDAryxWydk=; b=Bc5o5PhU1RzaMQxB3ukjVhxZ8T
 Wm4SjMdcNb9Orggjw2okLTDfhpK8uoAdPG6kwrVldwdcmw0B1GCL30JdNfb6JoaEQbwuWaWu5BBeV
 lmbzAUNHVcrsZS5yAA7rKMgMQQqO8qLYjci4/++GJ/CU5dvliHmz6fm+JlMH6hLBtgxs=;
Received: from bmailout2.hostsharing.net ([83.223.78.240])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vEPGY-0003OM-2P for openipmi-developer@lists.sourceforge.net;
 Thu, 30 Oct 2025 09:48:22 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by bmailout2.hostsharing.net (Postfix) with ESMTPS id 379E720083DE;
 Thu, 30 Oct 2025 10:30:13 +0100 (CET)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id 323DF593A; Thu, 30 Oct 2025 10:30:13 +0100 (CET)
Date: Thu, 30 Oct 2025 10:30:13 +0100
From: Lukas Wunner <lukas@wunner.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <aQMwJZlHtP99brn-@wunner.de>
References: <8f35eb96-3458-45d2-a31d-7813ae4e7260@llnl.gov>
 <20240926210259.GA13456@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240926210259.GA13456@bhelgaas>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 26, 2024 at 04:02:59PM -0500,
 Bjorn Helgaas wrote: > On Mon, Sep 23, 2024 at 05:06:05PM -0700,
 Tony Hutter wrote: > > +++ b/drivers/pci/hotplug/pciehp_core.c
 > > @@ -73,6 +73,13 @@ static [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vEPGY-0003OM-2P
Subject: Re: [Openipmi-developer] [PATCH v2] PCI: Introduce Cray ClusterStor
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
Cc: minyard@acm.org, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 openipmi-developer@lists.sourceforge.net, mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Sep 26, 2024 at 04:02:59PM -0500, Bjorn Helgaas wrote:
> On Mon, Sep 23, 2024 at 05:06:05PM -0700, Tony Hutter wrote:
> > +++ b/drivers/pci/hotplug/pciehp_core.c
> > @@ -73,6 +73,13 @@ static int init_slot(struct controller *ctrl)
> >  		ops->get_attention_status = pciehp_get_raw_indicator_status;
> >  		ops->set_attention_status = pciehp_set_raw_indicator_status;
> >  	}
> > +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> > +	if (is_craye1k_slot(ctrl)) {
> > +		/* slots 1-24 on Cray E1000s are controlled differently */
> > +		ops->get_attention_status = craye1k_get_attention_status;
> > +		ops->set_attention_status = craye1k_set_attention_status;
> > +	}
> > +#endif
> 
> I'm not really thrilled about dropping device-specific code in here,
> but I don't have a better suggestion yet.

For acpiphp, we have an elaborate mechanism to register attention LED
drivers via acpiphp_register_attention() / acpiphp_unregister_attention().

So far it's only used by two drivers (acpiphp_ampere_altra.c and
acpiphp_ibm.c).

For pciehp we have one custom attention LED mechanism for VMD
(enabled through pci_dev->hotplug_user_indicators) and now
this Cray E1000 mechanism.

Personally I'm fine with keeping this lightweight and not add
a similar register/unregister mechanism as we did for acpiphp.

However I think it might make sense to drop the hotplug_user_indicators
flag and instead invoke the is_vmd() check directly from init_slot()
to make it more explicit what this is about and to allow the code to be
optimized away on non-x86.

Thanks,

Lukas


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
