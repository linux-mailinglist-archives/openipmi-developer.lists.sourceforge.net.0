Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EF4C7E402
	for <lists+openipmi-developer@lfdr.de>; Sun, 23 Nov 2025 17:35:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dMnA5lWoL22kuTfrU9tMdg0aV2u9TgGLrHjvcKA8M0g=; b=R7Tk24ZLIXR31lhl1N6Pgb2+Ax
	2lkAF9WCDBLyhHU2Hd6kCMItJh/gOAmSGDboIw5zZhpvVN8+N/C5GmHhuf+xnMktAv2CN1PTtR1SY
	4daL9EwH6yQcBuxangC0u8hQAIeo+fUrQq28DUy4qdAGm2qfq1QTE2UxXJFlUYlotvI4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vND3h-0003Fw-55;
	Sun, 23 Nov 2025 16:35:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <foo00@h08.hostsharing.net>) id 1vND3f-0003Fi-7R
 for openipmi-developer@lists.sourceforge.net;
 Sun, 23 Nov 2025 16:35:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uuo9PUwHfXIe9Z+gILFTPIcs4d2W0XqVk+5vQugHQ5Y=; b=XwN8F9EOe8wvkbmQELNMWXNwrS
 fb8/ogRCnvOnK0Tm4kqklmvrqyKcDk6W1MyFDQtq6yEgfg5IYPXRWhTkSLdwp43nRT8mLUl56ZNqk
 UibEp6ZFNwalq9jIxoE80ZSDopU7EfcR/AviFLruycXc0dGxL82QOjtJHHlb7u4rL/Fw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uuo9PUwHfXIe9Z+gILFTPIcs4d2W0XqVk+5vQugHQ5Y=; b=kPDxdqOgH9FQQHICybqSkEcDYf
 DjFhomQiJyj7kCF9HHE9Nrx+WorhRdj1y87os2f/Plc76ygIJd/wQ4FQlAZ+u1hd83JmKAxYNeMfj
 uHH2trRY4c/PWVOjNl742ByuLsDVTkQLWyOs1G7O9G7/hYcm0sc2OuBCC6zTgo3WjK3Y=;
Received: from bmailout1.hostsharing.net ([83.223.95.100])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vND3f-0004Xd-1i for openipmi-developer@lists.sourceforge.net;
 Sun, 23 Nov 2025 16:35:27 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384
 client-signature ECDSA (secp384r1) client-digest SHA384)
 (Client CN "*.hostsharing.net",
 Issuer "GlobalSign GCC R6 AlphaSSL CA 2025" (verified OK))
 by bmailout1.hostsharing.net (Postfix) with ESMTPS id 1C7F02C06A8A;
 Sun, 23 Nov 2025 17:35:20 +0100 (CET)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id 052D41BEAC; Sun, 23 Nov 2025 17:35:19 +0100 (CET)
Date: Sun, 23 Nov 2025 17:35:19 +0100
From: Lukas Wunner <lukas@wunner.de>
To: Tony Hutter <hutter2@llnl.gov>
Message-ID: <aSM3x-V4Apcybpax@wunner.de>
References: <d485bd74-e49d-4c89-b986-1b45c93e7975@llnl.gov>
 <aQMsVUCBDF7ZUSK-@wunner.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aQMsVUCBDF7ZUSK-@wunner.de>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 30, 2025 at 10:13:57AM +0100, Lukas Wunner wrote:
 > On Wed, Oct 08, 2025 at 04:48:22PM -0700, Tony Hutter wrote: > > @@ -376,8
 +383,16 @@ int __init pcie_hp_init(void) > > > > retval = pci [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vND3f-0004Xd-1i
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

On Thu, Oct 30, 2025 at 10:13:57AM +0100, Lukas Wunner wrote:
> On Wed, Oct 08, 2025 at 04:48:22PM -0700, Tony Hutter wrote:
> > @@ -376,8 +383,16 @@ int __init pcie_hp_init(void)
> >  
> >  	retval = pcie_port_service_register(&hpdriver_portdrv);
> >  	pr_debug("pcie_port_service_register = %d\n", retval);
> > -	if (retval)
> > +	if (retval) {
> >  		pr_debug("Failure to register service\n");
> > +		return retval;
> > +	}
> > +
> > +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> > +	retval = craye1k_init();
> > +	if (retval)
> > +		pr_debug("Failure to register Cray E1000 extensions");
> > +#endif
> 
> You also need to annotate craye1k_init() with __init.

Sorry, I've realized that I made the following note during review
of your patch but forgot to include it in the reply above:

You may want to consider making this driver modular and auto-load it
using a MODULE_DEVICE_TABLE(dmi, ...) declaration.  craye1k_init()
would then become the module_init() call and you could tear down
everything in a module_exit() call.  If you want to run craye1k_init()
earlier if built-in, use e.g. an arch_initcall() instead of a
module_init() call.  There's precedent in the tree for combinations
of arch_initcall() + module_exit().

Thanks,

Lukas


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
