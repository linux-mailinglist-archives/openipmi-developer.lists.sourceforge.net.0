Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mL6gNfjD/GnSTAAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 07 May 2026 18:55:20 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB644EC86D
	for <lists+openipmi-developer@lfdr.de>; Thu, 07 May 2026 18:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=itwODCYHH+GG3sJAVU1n6gz+ielUIjHUDg9qgYJAYRI=; b=GZVVp5wdwdf/kyJ1217N1xeKcY
	BnBdLcJYiSQogIt+IncWvOS1p1CkMz6dusFKUYYnoDo3W9skr00V0SbtdiZXPCacvdb+Y/h3yhoid
	3n0SnI5rfCFCRYRhL8JyIhvSETSIAN+mdyly6ZHJW/Ha6xfemMFWfnl2/VHn/+MdquJ4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wL20G-00083N-Oa;
	Thu, 07 May 2026 16:55:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wL20E-00083H-40
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 May 2026 16:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MVa/SANg2C2YOjW+mWwzuGeV40cb1Yh8WbrkHXk9mnA=; b=c5dJJ9baGbuR0oaANC/yiIS4Jd
 PC/3jwO5a8glJdEi4QfCkGcT4OumOiwKZ7CvN1uFoVByvyGsPuLrBcwyMjprIVFzx3v77nu7TArZh
 lRpr0sGKcM7DPySOZaNdSJz6d+sLO6YrD2sCbXYyR/fzS4NJwo1uzaloAxt0wEG+qYOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MVa/SANg2C2YOjW+mWwzuGeV40cb1Yh8WbrkHXk9mnA=; b=iwv+NoKytIXUwYYX6QDY+eZ83z
 zgl3F5dJLjGvKopHzv/Qjv7CIXrV8vikX8RB4bttMmUOks+v7dXvdlDSoBlIbO4b/r3sHaqYX2/Zi
 kNSQXwXapmYeAV0j2YXmeMyiIkqyZgBNp48UM/6OB6erJyoH9KvC3Y7jkVWs79jhLQHQ=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wL209-0006Xo-HU for openipmi-developer@lists.sourceforge.net;
 Thu, 07 May 2026 16:55:07 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-7dbec19732eso824523a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 May 2026 09:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1778172895; x=1778777695; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MVa/SANg2C2YOjW+mWwzuGeV40cb1Yh8WbrkHXk9mnA=;
 b=W6NeVGmIxkV1sgc4Ajd0iSKecg5tZXN9wEAdJFanzzOZ5ECBq1t0JoFklrFT8yeoae
 +VzaensA58c+XvNIH5TcyaRZ43kizbuAGXzr8JpK57bPWaY2JN70BGbZ9Li05OJyu1mP
 kysDPEaYvisJ7Prsi8kZNQFb0rY2LdaUClaUskmczT93sMyULtwMDuYekZPz6OzP2eyQ
 dXUWugg1MHW/7qp4qxf29yppsrjXd5n/chxfMub4TZO6m1TbU5pL5F+lRzVQjXplM71B
 c2wS48O26hgNWRhrptPWqKk9yMX/wrLNMJ4ja9nDaIeDVAtwPLQTETIJ7ALz8ZMXSE+n
 BFRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778172895; x=1778777695;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=MVa/SANg2C2YOjW+mWwzuGeV40cb1Yh8WbrkHXk9mnA=;
 b=YbYi4913bIFe1pD9+CJmzeLZveJor6LJbhg4HDQQcovmtgWoA4SCRg9xKEdB9NnG61
 6OfwFpY+t5qR5yNixPEjqbZT2ntgfVqB4xzlE01HbTfumHmTArvivltaUYmy74VMcc18
 HQkc01i3B+Uj/CI5WPkiQovx/tTXTcN9i+v9XhfgnAIMa25Zrb86cavUBAsJJC06sPIq
 wDyuo5qTKhgJu0yjgXeeF+DskRAUOPKN57X8TxLKb95h2QNXtSsb8sJgHTGwDnWjqe/u
 Nx+0C2QEGTbZ+Z/hVMIl3BOMn41X1FG6Ue50z8n9L87HlOmLFC+kcjnaaOodaCNutVfo
 aA4g==
X-Forwarded-Encrypted: i=1;
 AFNElJ940WkBom/6Xy6pDw4nPLiFNf9le3otzJ/sr0oMU7nAVDN40KMXs1T30NLrIaB25tiH2jc/U63ITtu5C0UTL2PQqtU=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwjzrUfi3ufDVHy9JvAJjKNj9skcBQG/UKX5xEBiFac/1CBvJnE
 f2cDw+9nWrMxuAeEdxxcewxBCzpeyk6UKNKXcgJcT47AXEeck3H8W6iobhJoUzIoVklYMtrPY0C
 cscdATik=
X-Gm-Gg: AeBDieump8DiltLv7PhSFKl47MazlSGvzaUAAnCkxOahgOurxzLgF7cAK6xbp785CFH
 xxKNLo5mCZlFOIebxmNCyjeGOZtTS6FjEAmb6GXMHcN70c9QP744EtjYWztfeVF8J2oBjt4mYbV
 Kv5Jtpsy8HgBka6U/WEi49odWHBe2ZeflDHk61FeKqbnMCOdN0oDO7bTHPjACIL/JfkDTFQFqLD
 gEylhhMbIZIXCi4sH9s77zav6VtDTYoNKlU3mGXrVYHu11QHuvh7x3xNyhCtW7/O8F22XNYXB9u
 qeneqZe1WESomPSjeSNeN3jwZk/x0nia17v5G5J5eRlz9nxI1FTWZfzLZsW7Vq4/LtvPkZEwWGd
 Vn22R7ucMK9qd8NisHoW34KUiNcDs4xgnkopi43TBhwvALVMDy6N7Xmm1gmJVQKLlyWjwKNgjUX
 t35bX6nSACjjhwS8IX43hQMaH6//DmyW5i7CcxGzKlxaYiggcElUeGRib8IPQodWeVVczWXF+qX
 PJIi3jCaZhEA6qWUw1SIXs+
X-Received: by 2002:a4a:e845:0:b0:696:637e:4831 with SMTP id
 006d021491bc7-69998ccc23cmr5040401eaf.25.1778172894572; 
 Thu, 07 May 2026 09:54:54 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:6f35:6142:1491:cdf])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-6968945dc14sm12051955eaf.6.2026.05.07.09.54.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2026 09:54:53 -0700 (PDT)
Date: Thu, 7 May 2026 11:54:50 -0500
From: Corey Minyard <corey@minyard.net>
To: Tony Hutter <hutter2@llnl.gov>
Message-ID: <afzD2tR6LiNMX3uw@mail.minyard.net>
References: <768409a2-0593-49bd-9065-e8b93c60d4ce@llnl.gov>
 <afK8hZfnf1xk6xJ1@mail.minyard.net>
 <02a02a9d-6d8d-4c91-bdad-0a14d0211952@llnl.gov>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02a02a9d-6d8d-4c91-bdad-0a14d0211952@llnl.gov>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Well dang it, I sent the previous reply using the wrong email
 client and it stuck in some HTML. On Thu, May 07, 2026 at 09:42:53AM -0700,
 Tony Hutter wrote: > > Have you tested removing and adding the IPMI interface
 while this is up? > > You can do that with the hotmod interface on IPMI.
 > > Tha [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wL209-0006Xo-HU
Subject: Re: [Openipmi-developer] [PATCH v8 RESEND] Introduce Cray
 ClusterStor E1000 NVMe slot LED driver
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
Reply-To: corey@minyard.net
Cc: minyard@acm.org, alok.a.tiwari@oracle.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lukas Wunner <lukas@wunner.de>, Bjorn Helgaas <helgaas@kernel.org>,
 linux-pci@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: CEB644EC86D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	FORGED_RECIPIENTS(0.00)[m:hutter2@llnl.gov,m:minyard@acm.org,m:alok.a.tiwari@oracle.com,m:linux-kernel@vger.kernel.org,m:lukas@wunner.de,m:helgaas@kernel.org,m:linux-pci@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:mariusz.tkaczyk@linux.intel.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net]
X-Rspamd-Action: no action

Well dang it, I sent the previous reply using the wrong email client and
it stuck in some HTML.

On Thu, May 07, 2026 at 09:42:53AM -0700, Tony Hutter wrote:
> > Have you tested removing and adding the IPMI interface while this is up?
> > You can do that with the hotmod interface on IPMI.
> 
> Thanks for the tip Corey.  I just tried reloading the device via hotmod, and the craye1k driver worked as expected.  Here's the hotmod removal + add dmesg lines:

All looks good.  I expected it to work, but it's always good to test.

-corey

> 
>   craye1k: Got unexpected smi_gone, iface=0
>   ipmi_si hotmod-ipmi-si.3: ipmi_platform: probing via hotmod
>   ipmi_platform: ipmi_si: hotmod: io 0xca2 regsize 1 spacing 1 irq 0
>   ipmi_si: Adding hotmod-specified kcs state machine
>   ipmi_si: Trying hotmod-specified kcs state machine at i/o address 0xca2, slave address 0x20, irq 0
>   ipmi_si hotmod-ipmi-si.3: IPMI message handler: Found new BMC (man_id: 0x002415, prod_id: 0x0101, dev_id: 0x20)
>   ipmi_si hotmod-ipmi-si.3: Cray ClusterStor E1000 slot LEDs registered
>   ipmi_si hotmod-ipmi-si.3: IPMI kcs interface initialized
> 
> -Tony
> 
> On 4/29/26 19:20, Corey Minyard wrote:
> > On Wed, Apr 29, 2026 at 04:22:55PM -0700, Tony Hutter wrote:
> >> Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
> >> The driver provides hotplug attention status callbacks for the 24 NVMe
> >> slots on the E1000.  This allows users to access the E1000's locate and
> >> fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
> >> entries.  This driver uses IPMI to communicate with the E1000 controller
> >> to toggle the LEDs.
> >>
> >> Signed-off-by: Tony Hutter <hutter2@llnl.gov>
> > 
> > For the IPMI portions:
> > Reviewed-by: Corey Minyard <corey@minyard.net>
> > 
> > Have you tested removing and adding the IPMI interface while this is up?
> > You can do that with the hotmod interface on IPMI.  I didn't see any
> > issues, but it's always good to test.
> > 
> > -corey
> > 
> >> ---
> >> Changes in v8:
> >>  - Remove unused variable in craye1k_get_attention_status().
> >>
> >> Changes in v7:
> >>  - Update sysfs-bus-pci text from feedback.
> >>  - Add DMI dependency to Kconfig.
> >>  - Refactor pciehp_core.c to remove CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> >>    code blocks.
> >>  - Move errno.h #include into correct alphabetical order.
> >>  - Add comment describing the reasoning for the debugfs counters.
> >>  - Move craye1k_init() call from pcie_hp_init() to init_slot().
> >>  - Make craye1k mutex global rather than in craye1k->lock.  This enables
> >>    handling of craye1k_[get|set]_attention_status() calls before the craye1k
> >>    driver is initialized.
> >>  - Do driver cleanup on craye1k_smi_gone().
> >>
> >> Changes in v6:
> >>  - Change some dev_info_ratelimited() calls to dev_info().
> >>  - Don't call craye1k_init() if pcie_port_service_register() fails.
> >>  - Fix stray indent in #define CRAYE1K_POST_CMD_WAIT_MS
> >>
> >> Changes in v5:
> >>  - Removed unnecessary ipmi_smi.h #include.
> >>  - Added WARN_ON() to craye1k_do_message() to sanity check that craye1k->lock
> >>    is held.
> >>  - Added additional comments for when craye1k->lock should be held.
> >>
> >> Changes in v4:
> >>  - Fix typo in Kconfig: "is it" ->  "it is"
> >>  - Rename some #defines to CRAYE1K_SUBCMD_*
> >>  - Use IS_ERR() check in craye1k_debugfs_init()
> >>  - Return -EIO instead of -EINVAL when LED value check fails
> >>
> >> Changes in v3:
> >>  - Add 'attention' values in Documentation/ABI/testing/sysfs-bus-pci.
> >>  - Remove ACPI_PCI_SLOT dependency.
> >>  - Cleanup craye1k_do_message() error checking.
> >>  - Skip unneeded memcpy() on failure in __craye1k_do_command().
> >>  - Merge craye1k_do_command_and_netfn() code into craye1k_do_command().
> >>  - Make craye1k_is_primary() return boolean.
> >>  - Return negative error code on failure in craye1k_set_primary().
> >>
> >> Changes in v2:
> >>  - Integrated E1000 code into the pciehp driver as an built-in
> >>    extention rather than as a standalone module.
> >>  - Moved debug tunables and counters to debugfs.
> >>  - Removed forward declarations.
> >>  - Kept the /sys/bus/pci/slots/<slot>/attention interface rather
> >>    than using NPEM/_DSM or led_classdev as suggested.  The "attention"
> >>    interface is more beneficial for our site, since it allows us to
> >>    control the NVMe slot LEDs agnostically across different enclosure
> >>    vendors and kernel versions using the same scripts.  It is also
> >>    nice to use the same /sys/bus/pci/slots/<slot>/ sysfs directory for
> >>    both slot LED toggling ("attention") and slot power control
> >>    ("power").
> >> ---
> >>  Documentation/ABI/testing/sysfs-bus-pci |  21 +
> >>  MAINTAINERS                             |   5 +
> >>  drivers/pci/hotplug/Kconfig             |  10 +
> >>  drivers/pci/hotplug/Makefile            |   3 +
> >>  drivers/pci/hotplug/pciehp.h            |  20 +
> >>  drivers/pci/hotplug/pciehp_core.c       |  20 +-
> >>  drivers/pci/hotplug/pciehp_craye1k.c    | 687 ++++++++++++++++++++++++
> >>  7 files changed, 765 insertions(+), 1 deletion(-)
> >>  create mode 100644 drivers/pci/hotplug/pciehp_craye1k.c
> >>
> >> diff --git a/Documentation/ABI/testing/sysfs-bus-pci b/Documentation/ABI/testing/sysfs-bus-pci
> >> index 92debe879ffb..8536d2ff30d1 100644
> >> --- a/Documentation/ABI/testing/sysfs-bus-pci
> >> +++ b/Documentation/ABI/testing/sysfs-bus-pci
> >> @@ -231,6 +231,27 @@ Description:
> >>  		    - scXX contains the device subclass;
> >>  		    - iXX contains the device class programming interface.
> >>  
> >> +What:		/sys/bus/pci/slots/.../attention
> >> +Date:		February 2025
> >> +Contact:	linux-pci@vger.kernel.org
> >> +Description:
> >> +		The attention attribute is used to read or write the attention
> >> +		status for an enclosure slot.  This is often used to set the
> >> +		slot LED value on a NVMe storage enclosure.
> >> +
> >> +		Common values:
> >> +		0 = OFF
> >> +		1 = ON
> >> +		2 = blink
> >> +
> >> +		Using the Cray ClusterStor E1000 extensions:
> >> +		0 = fault LED OFF, locate LED OFF
> >> +		1 = fault LED ON,  locate LED OFF
> >> +		2 = fault LED OFF, locate LED ON
> >> +		3 = fault LED ON,  locate LED ON
> >> +
> >> +		Other values are no-op, OFF, or ON depending on the driver.
> >> +
> >>  What:		/sys/bus/pci/slots/.../module
> >>  Date:		June 2009
> >>  Contact:	linux-pci@vger.kernel.org
> >> diff --git a/MAINTAINERS b/MAINTAINERS
> >> index 9ac254f4ec41..861576d60a36 100644
> >> --- a/MAINTAINERS
> >> +++ b/MAINTAINERS
> >> @@ -6543,6 +6543,11 @@ S:	Maintained
> >>  F:	Documentation/filesystems/cramfs.rst
> >>  F:	fs/cramfs/
> >>  
> >> +CRAY CLUSTERSTOR E1000 NVME SLOT LED DRIVER EXTENSIONS
> >> +M:	Tony Hutter <hutter2@llnl.gov>
> >> +S:	Maintained
> >> +F:	drivers/pci/hotplug/pciehp_craye1k.c
> >> +
> >>  CRC LIBRARY
> >>  M:	Eric Biggers <ebiggers@kernel.org>
> >>  R:	Ard Biesheuvel <ardb@kernel.org>
> >> diff --git a/drivers/pci/hotplug/Kconfig b/drivers/pci/hotplug/Kconfig
> >> index 3207860b52e4..3cb84e5e13e9 100644
> >> --- a/drivers/pci/hotplug/Kconfig
> >> +++ b/drivers/pci/hotplug/Kconfig
> >> @@ -183,4 +183,14 @@ config HOTPLUG_PCI_S390
> >>  
> >>  	  When in doubt, say Y.
> >>  
> >> +config HOTPLUG_PCI_PCIE_CRAY_E1000
> >> +	bool "PCIe Hotplug extensions for Cray ClusterStor E1000"
> >> +	depends on DMI && HOTPLUG_PCI_PCIE && IPMI_HANDLER=y
> >> +	help
> >> +	  Say Y here if you have a Cray ClusterStor E1000 and want to control
> >> +	  your NVMe slot LEDs.  Without this driver it is not possible
> >> +	  to control the fault and locate LEDs on the E1000's 24 NVMe slots.
> >> +
> >> +	  When in doubt, say N.
> >> +
> >>  endif # HOTPLUG_PCI
> >> diff --git a/drivers/pci/hotplug/Makefile b/drivers/pci/hotplug/Makefile
> >> index 40aaf31fe338..82a1f0592d0a 100644
> >> --- a/drivers/pci/hotplug/Makefile
> >> +++ b/drivers/pci/hotplug/Makefile
> >> @@ -66,6 +66,9 @@ pciehp-objs		:=	pciehp_core.o	\
> >>  				pciehp_ctrl.o	\
> >>  				pciehp_pci.o	\
> >>  				pciehp_hpc.o
> >> +ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> >> +pciehp-objs		+=	pciehp_craye1k.o
> >> +endif
> >>  
> >>  shpchp-objs		:=	shpchp_core.o	\
> >>  				shpchp_ctrl.o	\
> >> diff --git a/drivers/pci/hotplug/pciehp.h b/drivers/pci/hotplug/pciehp.h
> >> index debc79b0adfb..3a8173f3e159 100644
> >> --- a/drivers/pci/hotplug/pciehp.h
> >> +++ b/drivers/pci/hotplug/pciehp.h
> >> @@ -199,6 +199,17 @@ int pciehp_get_raw_indicator_status(struct hotplug_slot *h_slot, u8 *status);
> >>  
> >>  int pciehp_slot_reset(struct pcie_device *dev);
> >>  
> >> +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> >> +int craye1k_init(void);
> >> +bool is_craye1k_board(void);
> >> +int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot, u8 *status);
> >> +int craye1k_set_attention_status(struct hotplug_slot *hotplug_slot, u8 status);
> >> +#else
> >> +#define craye1k_init() (0)
> >> +#define craye1k_get_attention_status NULL
> >> +#define craye1k_set_attention_status NULL
> >> +#endif
> >> +
> >>  static inline const char *slot_name(struct controller *ctrl)
> >>  {
> >>  	return hotplug_slot_name(&ctrl->hotplug_slot);
> >> @@ -209,4 +220,13 @@ static inline struct controller *to_ctrl(struct hotplug_slot *hotplug_slot)
> >>  	return container_of(hotplug_slot, struct controller, hotplug_slot);
> >>  }
> >>  
> >> +static inline bool is_craye1k_slot(struct controller *ctrl)
> >> +{
> >> +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> >> +	return (PSN(ctrl) >= 1 && PSN(ctrl) <= 24 && is_craye1k_board());
> >> +#else
> >> +	return false;
> >> +#endif
> >> +}
> >> +
> >>  #endif				/* _PCIEHP_H */
> >> diff --git a/drivers/pci/hotplug/pciehp_core.c b/drivers/pci/hotplug/pciehp_core.c
> >> index f59baa912970..3e8e2b3069bf 100644
> >> --- a/drivers/pci/hotplug/pciehp_core.c
> >> +++ b/drivers/pci/hotplug/pciehp_core.c
> >> @@ -72,6 +72,22 @@ static int init_slot(struct controller *ctrl)
> >>  	} else if (ctrl->pcie->port->hotplug_user_indicators) {
> >>  		ops->get_attention_status = pciehp_get_raw_indicator_status;
> >>  		ops->set_attention_status = pciehp_set_raw_indicator_status;
> >> +	} else if (is_craye1k_slot(ctrl)) {
> >> +		/*
> >> +		 * The Cray E1000 driver controls slots 1-24.  Initialize the
> >> +		 * Cray E1000 driver when slot 1 is seen.
> >> +		 */
> >> +		if (PSN(ctrl) == 1) {
> >> +			retval = craye1k_init();
> >> +			if (retval) {
> >> +				ctrl_err(ctrl,
> >> +					 "Error loading Cray E1000 extensions");
> >> +				kfree(ops);
> >> +				return retval;
> >> +			}
> >> +		}
> >> +		ops->get_attention_status = craye1k_get_attention_status;
> >> +		ops->set_attention_status = craye1k_set_attention_status;
> >>  	}
> >>  
> >>  	/* register this slot with the hotplug pci core */
> >> @@ -376,8 +392,10 @@ int __init pcie_hp_init(void)
> >>  
> >>  	retval = pcie_port_service_register(&hpdriver_portdrv);
> >>  	pr_debug("pcie_port_service_register = %d\n", retval);
> >> -	if (retval)
> >> +	if (retval) {
> >>  		pr_debug("Failure to register service\n");
> >> +		return retval;
> >> +	}
> >>  
> >>  	return retval;
> >>  }
> >> diff --git a/drivers/pci/hotplug/pciehp_craye1k.c b/drivers/pci/hotplug/pciehp_craye1k.c
> >> new file mode 100644
> >> index 000000000000..9c5bee81fdf8
> >> --- /dev/null
> >> +++ b/drivers/pci/hotplug/pciehp_craye1k.c
> >> @@ -0,0 +1,687 @@
> >> +// SPDX-License-Identifier: GPL-2.0
> >> +/*
> >> + * Copyright 2022-2024 Lawrence Livermore National Security, LLC
> >> + */
> >> +/*
> >> + * Cray ClusterStor E1000 hotplug slot LED driver extensions
> >> + *
> >> + * This driver controls the NVMe slot LEDs on the Cray ClusterStore E1000.
> >> + * It provides hotplug attention status callbacks for the 24 NVMe slots on
> >> + * the E1000.  This allows users to access the E1000's locate and fault
> >> + * LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs entries.
> >> + * This driver uses IPMI to communicate with the E1000 controller to toggle
> >> + * the LEDs.
> >> + *
> >> + * This driver is based off of ibmpex.c
> >> + */
> >> +
> >> +#include <linux/debugfs.h>
> >> +#include <linux/delay.h>
> >> +#include <linux/dmi.h>
> >> +#include <linux/errno.h>
> >> +#include <linux/ipmi.h>
> >> +#include <linux/module.h>
> >> +#include <linux/pci.h>
> >> +#include <linux/pci_hotplug.h>
> >> +#include <linux/random.h>
> >> +#include "pciehp.h"
> >> +
> >> +/* Cray E1000 commands */
> >> +#define CRAYE1K_CMD_NETFN       0x3c
> >> +#define CRAYE1K_CMD_PRIMARY     0x33
> >> +#define CRAYE1K_CMD_FAULT_LED   0x39
> >> +#define CRAYE1K_CMD_LOCATE_LED  0x22
> >> +
> >> +/* Subcommands */
> >> +#define CRAYE1K_SUBCMD_GET_LED		0x0
> >> +#define CRAYE1K_SUBCMD_SET_LED		0x1
> >> +#define CRAYE1K_SUBCMD_SET_PRIMARY	0x1
> >> +
> >> +/*
> >> + * Milliseconds to wait after get/set LED command.  200ms value found though
> >> + * experimentation
> >> + */
> >> +#define CRAYE1K_POST_CMD_WAIT_MS	200
> >> +
> >> +struct craye1k {
> >> +	struct device *dev;   /* BMC device */
> >> +	struct mutex lock;
> >> +	struct completion read_complete;
> >> +	struct ipmi_addr address;
> >> +	struct ipmi_user *user;
> >> +	int iface;
> >> +
> >> +	long tx_msg_id;
> >> +	struct kernel_ipmi_msg tx_msg;
> >> +	unsigned char tx_msg_data[IPMI_MAX_MSG_LENGTH];
> >> +	unsigned char rx_msg_data[IPMI_MAX_MSG_LENGTH];
> >> +	unsigned long rx_msg_len;
> >> +	unsigned char rx_result;	/* IPMI completion code */
> >> +
> >> +	/* Parent dir for all our debugfs entries */
> >> +	struct dentry *parent;
> >> +
> >> +	/* debugfs stats */
> >> +	u64 check_primary;
> >> +	u64 check_primary_failed;
> >> +	u64 was_already_primary;
> >> +	u64 was_not_already_primary;
> >> +	u64 set_primary;
> >> +	u64 set_initial_primary_failed;
> >> +	u64 set_primary_failed;
> >> +	u64 set_led_locate_failed;
> >> +	u64 set_led_fault_failed;
> >> +	u64 set_led_readback_failed;
> >> +	u64 set_led_failed;
> >> +	u64 get_led_failed;
> >> +	u64 completion_timeout;
> >> +	u64 wrong_msgid;
> >> +	u64 request_failed;
> >> +
> >> +	/* debugfs configuration options */
> >> +
> >> +	/* Print info on spurious IPMI messages */
> >> +	bool print_errors;
> >> +
> >> +	/* Retries for kernel IPMI layer */
> >> +	u32 ipmi_retries;
> >> +
> >> +	/* Timeout in ms for IPMI (0 = use IPMI default_retry_ms) */
> >> +	u32 ipmi_timeout_ms;
> >> +
> >> +	/* Timeout in ms to wait for E1000 message completion */
> >> +	u32 completion_timeout_ms;
> >> +};
> >> +
> >> +/*
> >> + * Make our craye1k a global so get/set_attention_status() can access it.
> >> + * This is safe since there's only one node controller on the board, and so it's
> >> + * impossible to instantiate more than one craye1k.
> >> + */
> >> +static struct craye1k *craye1k_global;
> >> +static DEFINE_MUTEX(craye1k_lock);
> >> +
> >> +/*
> >> + * The E1000 command timeout and retry values were found though experimentation
> >> + * by looking at the error counters.  Keep the counters around to troubleshoot
> >> + * any issues with our current timeout/retry values.
> >> + */
> >> +static struct dentry *
> >> +craye1k_debugfs_init(struct craye1k *craye1k)
> >> +{
> >> +	umode_t mode = 0644;
> >> +	struct dentry *parent = debugfs_create_dir("pciehp_craye1k", NULL);
> >> +
> >> +	if (IS_ERR(parent))
> >> +		return NULL;
> >> +
> >> +	debugfs_create_x64("check_primary", mode, parent,
> >> +			   &craye1k->check_primary);
> >> +	debugfs_create_x64("check_primary_failed", mode, parent,
> >> +			   &craye1k->check_primary_failed);
> >> +	debugfs_create_x64("was_already_primary", mode, parent,
> >> +			   &craye1k->was_already_primary);
> >> +	debugfs_create_x64("was_not_already_primary", mode, parent,
> >> +			   &craye1k->was_not_already_primary);
> >> +	debugfs_create_x64("set_primary", mode, parent,
> >> +			   &craye1k->set_primary);
> >> +	debugfs_create_x64("set_initial_primary_failed", mode, parent,
> >> +			   &craye1k->set_initial_primary_failed);
> >> +	debugfs_create_x64("set_primary_failed", mode, parent,
> >> +			   &craye1k->set_primary_failed);
> >> +	debugfs_create_x64("set_led_locate_failed", mode, parent,
> >> +			   &craye1k->set_led_locate_failed);
> >> +	debugfs_create_x64("set_led_fault_failed", mode, parent,
> >> +			   &craye1k->set_led_fault_failed);
> >> +	debugfs_create_x64("set_led_readback_failed", mode, parent,
> >> +			   &craye1k->set_led_readback_failed);
> >> +	debugfs_create_x64("set_led_failed", mode, parent,
> >> +			   &craye1k->set_led_failed);
> >> +	debugfs_create_x64("get_led_failed", mode, parent,
> >> +			   &craye1k->get_led_failed);
> >> +	debugfs_create_x64("completion_timeout", mode, parent,
> >> +			   &craye1k->completion_timeout);
> >> +	debugfs_create_x64("wrong_msgid", mode, parent,
> >> +			   &craye1k->wrong_msgid);
> >> +	debugfs_create_x64("request_failed", mode, parent,
> >> +			   &craye1k->request_failed);
> >> +
> >> +	debugfs_create_x32("ipmi_retries", mode, parent,
> >> +			   &craye1k->ipmi_retries);
> >> +	debugfs_create_x32("ipmi_timeout_ms", mode, parent,
> >> +			   &craye1k->ipmi_timeout_ms);
> >> +	debugfs_create_x32("completion_timeout_ms", mode, parent,
> >> +			   &craye1k->completion_timeout_ms);
> >> +	debugfs_create_bool("print_errors", mode, parent,
> >> +			    &craye1k->print_errors);
> >> +
> >> +	/* Return parent dir dentry */
> >> +	return parent;
> >> +}
> >> +
> >> +/*
> >> + * craye1k_msg_handler() - IPMI message response handler
> >> + */
> >> +static void craye1k_msg_handler(struct ipmi_recv_msg *msg, void *user_msg_data)
> >> +{
> >> +	struct craye1k *craye1k = user_msg_data;
> >> +
> >> +	if (msg->msgid != craye1k->tx_msg_id) {
> >> +		craye1k->wrong_msgid++;
> >> +		if (craye1k->print_errors) {
> >> +			dev_warn_ratelimited(craye1k->dev,
> >> +					     "rx msgid %ld != %ld",
> >> +					     msg->msgid, craye1k->tx_msg_id);
> >> +		}
> >> +		ipmi_free_recv_msg(msg);
> >> +		return;
> >> +	}
> >> +
> >> +	/* Set rx_result to the IPMI completion code */
> >> +	if (msg->msg.data_len > 0)
> >> +		craye1k->rx_result = msg->msg.data[0];
> >> +	else
> >> +		craye1k->rx_result = IPMI_UNKNOWN_ERR_COMPLETION_CODE;
> >> +
> >> +	if (msg->msg.data_len > 1) {
> >> +		/* Exclude completion code from data bytes */
> >> +		craye1k->rx_msg_len = msg->msg.data_len - 1;
> >> +		memcpy(craye1k->rx_msg_data, msg->msg.data + 1,
> >> +		       craye1k->rx_msg_len);
> >> +	} else {
> >> +		craye1k->rx_msg_len = 0;
> >> +	}
> >> +
> >> +	ipmi_free_recv_msg(msg);
> >> +
> >> +	complete(&craye1k->read_complete);
> >> +}
> >> +
> >> +static const struct ipmi_user_hndl craye1k_user_hndl = {
> >> +	.ipmi_recv_hndl = craye1k_msg_handler
> >> +};
> >> +
> >> +static void craye1k_new_smi(int iface, struct device *dev)
> >> +{
> >> +	int rc;
> >> +	struct craye1k *craye1k;
> >> +
> >> +	craye1k = kzalloc(sizeof(*craye1k), GFP_KERNEL);
> >> +	if (!craye1k)
> >> +		return;
> >> +
> >> +	craye1k->address.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
> >> +	craye1k->address.channel = IPMI_BMC_CHANNEL;
> >> +	craye1k->iface = iface;
> >> +	craye1k->dev = dev;
> >> +	craye1k->tx_msg.data = craye1k->tx_msg_data;
> >> +	craye1k->ipmi_retries = 4;
> >> +	craye1k->ipmi_timeout_ms = 500;
> >> +	craye1k->completion_timeout_ms = 300;
> >> +
> >> +	init_completion(&craye1k->read_complete);
> >> +
> >> +	dev_set_drvdata(dev, craye1k);
> >> +
> >> +	rc = ipmi_create_user(craye1k->iface, &craye1k_user_hndl, craye1k,
> >> +			      &craye1k->user);
> >> +	if (rc < 0) {
> >> +		dev_err(dev, "Unable to register IPMI user, iface %d\n",
> >> +			craye1k->iface);
> >> +		kfree(craye1k);
> >> +		dev_set_drvdata(dev, NULL);
> >> +		return;
> >> +	}
> >> +
> >> +	mutex_lock(&craye1k_lock);
> >> +
> >> +	/* There's only one node controller so driver data should not be set */
> >> +	WARN_ON(craye1k_global);
> >> +
> >> +	craye1k_global = craye1k;
> >> +	craye1k->parent = craye1k_debugfs_init(craye1k);
> >> +	mutex_unlock(&craye1k_lock);
> >> +	if (!craye1k->parent)
> >> +		dev_warn(dev, "Cannot create debugfs");
> >> +
> >> +	dev_info(dev, "Cray ClusterStor E1000 slot LEDs registered");
> >> +}
> >> +
> >> +static void craye1k_smi_gone(int iface)
> >> +{
> >> +	pr_warn("craye1k: Got unexpected smi_gone, iface=%d", iface);
> >> +
> >> +	mutex_lock(&craye1k_lock);
> >> +	if (craye1k_global) {
> >> +		debugfs_remove_recursive(craye1k_global->parent);
> >> +		kfree(craye1k_global);
> >> +		craye1k_global = NULL;
> >> +	}
> >> +	mutex_unlock(&craye1k_lock);
> >> +}
> >> +
> >> +static struct ipmi_smi_watcher craye1k_smi_watcher = {
> >> +	.owner = THIS_MODULE,
> >> +	.new_smi = craye1k_new_smi,
> >> +	.smi_gone = craye1k_smi_gone
> >> +};
> >> +
> >> +/*
> >> + * craye1k_send_message() - Send the message already setup in 'craye1k'
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Return: 0 on success, non-zero on error.
> >> + */
> >> +static int craye1k_send_message(struct craye1k *craye1k)
> >> +{
> >> +	int rc;
> >> +
> >> +	rc = ipmi_validate_addr(&craye1k->address, sizeof(craye1k->address));
> >> +	if (rc) {
> >> +		dev_err_ratelimited(craye1k->dev, "ipmi_validate_addr() = %d\n",
> >> +				    rc);
> >> +		return rc;
> >> +	}
> >> +
> >> +	craye1k->tx_msg_id++;
> >> +
> >> +	rc = ipmi_request_settime(craye1k->user, &craye1k->address,
> >> +				  craye1k->tx_msg_id, &craye1k->tx_msg, craye1k,
> >> +				  0, craye1k->ipmi_retries,
> >> +				  craye1k->ipmi_timeout_ms);
> >> +
> >> +	if (rc) {
> >> +		craye1k->request_failed++;
> >> +		return rc;
> >> +	}
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +/*
> >> + * craye1k_do_message() - Send the message in 'craye1k' and wait for a response
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Return: 0 on success, non-zero on error.
> >> + */
> >> +static int craye1k_do_message(struct craye1k *craye1k)
> >> +{
> >> +	int rc;
> >> +	struct completion *read_complete = &craye1k->read_complete;
> >> +	unsigned long tout = msecs_to_jiffies(craye1k->completion_timeout_ms);
> >> +
> >> +	WARN_ON(!mutex_is_locked(&craye1k_lock));
> >> +
> >> +	rc = craye1k_send_message(craye1k);
> >> +	if (rc)
> >> +		return rc;
> >> +
> >> +	rc = wait_for_completion_killable_timeout(read_complete, tout);
> >> +	if (rc == 0) {
> >> +		/* timed out */
> >> +		craye1k->completion_timeout++;
> >> +		return -ETIME;
> >> +	}
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +/*
> >> + * __craye1k_do_command() - Do an IPMI command
> >> + *
> >> + * Send a command with optional data bytes, and read back response bytes.
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: 0 on success, non-zero on error.
> >> + */
> >> +static int __craye1k_do_command(struct craye1k *craye1k, u8 netfn, u8 cmd,
> >> +				u8 *send_data, u8 send_data_len, u8 *recv_data,
> >> +				u8 recv_data_len)
> >> +{
> >> +	int rc;
> >> +
> >> +	craye1k->tx_msg.netfn = netfn;
> >> +	craye1k->tx_msg.cmd = cmd;
> >> +
> >> +	if (send_data) {
> >> +		memcpy(&craye1k->tx_msg_data[0], send_data, send_data_len);
> >> +		craye1k->tx_msg.data_len = send_data_len;
> >> +	} else {
> >> +		craye1k->tx_msg_data[0] = 0;
> >> +		craye1k->tx_msg.data_len = 0;
> >> +	}
> >> +
> >> +	rc = craye1k_do_message(craye1k);
> >> +	if (rc == 0)
> >> +		memcpy(recv_data, craye1k->rx_msg_data, recv_data_len);
> >> +
> >> +	return rc;
> >> +}
> >> +
> >> +/*
> >> + * craye1k_do_command() - Do a Cray E1000 specific IPMI command.
> >> + * @cmd: Cray E1000 specific command
> >> + * @send_data:  Data to send after the command
> >> + * @send_data_len: Data length
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: the last byte from the response or 0 if response had no response
> >> + * data bytes, else -1 on error.
> >> + */
> >> +static int craye1k_do_command(struct craye1k *craye1k, u8 cmd, u8 *send_data,
> >> +			      u8 send_data_len)
> >> +{
> >> +	int rc;
> >> +
> >> +	rc = __craye1k_do_command(craye1k, CRAYE1K_CMD_NETFN, cmd, send_data,
> >> +				  send_data_len, NULL, 0);
> >> +	if (rc != 0) {
> >> +		/* Error attempting command */
> >> +		return -1;
> >> +	}
> >> +
> >> +	if (craye1k->tx_msg.data_len == 0)
> >> +		return 0;
> >> +
> >> +	/* Return last received byte value */
> >> +	return craye1k->rx_msg_data[craye1k->rx_msg_len - 1];
> >> +}
> >> +
> >> +/*
> >> + * __craye1k_set_primary() - Tell the BMC we want to be the primary server
> >> + *
> >> + * An E1000 board has two physical servers on it.  In order to set a slot
> >> + * NVMe LED, this server needs to first tell the BMC that it's the primary
> >> + * server.
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: 0 on success, non-zero on error.
> >> + */
> >> +static int __craye1k_set_primary(struct craye1k *craye1k)
> >> +{
> >> +	u8 bytes[2] = {CRAYE1K_SUBCMD_SET_PRIMARY, 1};	/* set primary to 1 */
> >> +
> >> +	craye1k->set_primary++;
> >> +	return craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, bytes, 2);
> >> +}
> >> +
> >> +/*
> >> + * craye1k_is_primary() - Are we the primary server?
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: true if we are the primary server, false otherwise.
> >> + */
> >> +static bool craye1k_is_primary(struct craye1k *craye1k)
> >> +{
> >> +	u8 byte = 0;
> >> +	int rc;
> >> +
> >> +	/* Response byte is 0x1 on success */
> >> +	rc = craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, &byte, 1);
> >> +	craye1k->check_primary++;
> >> +	if (rc == 0x1)
> >> +		return true;   /* success */
> >> +
> >> +	craye1k->check_primary_failed++;
> >> +	return false;   /* We are not the primary server node */
> >> +}
> >> +
> >> +/*
> >> + * craye1k_set_primary() - Attempt to set ourselves as the primary server
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: 0 on success, -1 otherwise.
> >> + */
> >> +static int craye1k_set_primary(struct craye1k *craye1k)
> >> +{
> >> +	int tries = 10;
> >> +
> >> +	if (craye1k_is_primary(craye1k)) {
> >> +		craye1k->was_already_primary++;
> >> +		return 0;
> >> +	}
> >> +	craye1k->was_not_already_primary++;
> >> +
> >> +	/* delay found through experimentation */
> >> +	msleep(300);
> >> +
> >> +	if (__craye1k_set_primary(craye1k) != 0) {
> >> +		craye1k->set_initial_primary_failed++;
> >> +		return -1;	/* error */
> >> +	}
> >> +
> >> +	/*
> >> +	 * It can take 2 to 3 seconds after setting primary for the controller
> >> +	 * to report that it is the primary.
> >> +	 */
> >> +	while (tries--) {
> >> +		msleep(500);
> >> +		if (craye1k_is_primary(craye1k))
> >> +			break;
> >> +	}
> >> +
> >> +	if (tries == 0) {
> >> +		craye1k->set_primary_failed++;
> >> +		return -1;	/* never reported that it's primary */
> >> +	}
> >> +
> >> +	/* Wait for primary switch to finish */
> >> +	msleep(1500);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +/*
> >> + * craye1k_get_slot_led() - Get slot LED value
> >> + * @slot: Slot number (1-24)
> >> + * @is_locate_led: 0 = get fault LED value, 1 = get locate LED value
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: slot value on success, -1 on failure.
> >> + */
> >> +static int craye1k_get_slot_led(struct craye1k *craye1k, unsigned char slot,
> >> +				bool is_locate_led)
> >> +{
> >> +	u8 bytes[2];
> >> +	u8 cmd;
> >> +
> >> +	bytes[0] = CRAYE1K_SUBCMD_GET_LED;
> >> +	bytes[1] = slot;
> >> +
> >> +	cmd = is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CRAYE1K_CMD_FAULT_LED;
> >> +
> >> +	return craye1k_do_command(craye1k, cmd, bytes, 2);
> >> +}
> >> +
> >> +/*
> >> + * craye1k_set_slot_led() - Attempt to set the locate/fault LED to a value
> >> + * @slot: Slot number (1-24)
> >> + * @is_locate_led: 0 = use fault LED, 1 = use locate LED
> >> + * @value: Value to set (0 or 1)
> >> + *
> >> + * Check the LED value after calling this function to ensure it has been set
> >> + * properly.
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: 0 on success, non-zero on failure.
> >> + */
> >> +static int craye1k_set_slot_led(struct craye1k *craye1k, unsigned char slot,
> >> +				unsigned char is_locate_led,
> >> +				unsigned char value)
> >> +{
> >> +	u8 bytes[3];
> >> +	u8 cmd;
> >> +
> >> +	bytes[0] = CRAYE1K_SUBCMD_SET_LED;
> >> +	bytes[1] = slot;
> >> +	bytes[2] = value;
> >> +
> >> +	cmd = is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CRAYE1K_CMD_FAULT_LED;
> >> +
> >> +	return craye1k_do_command(craye1k, cmd, bytes, 3);
> >> +}
> >> +
> >> +/*
> >> + * __craye1k_get_attention_status() - Get LED value
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: 0 on success, -EIO on failure.
> >> + */
> >> +static int __craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
> >> +					  u8 *status, bool set_primary)
> >> +{
> >> +	unsigned char slot;
> >> +	int locate, fault;
> >> +	struct craye1k *craye1k;
> >> +
> >> +	craye1k = craye1k_global;
> >> +	slot = PSN(to_ctrl(hotplug_slot));
> >> +
> >> +	if (set_primary) {
> >> +		if (craye1k_set_primary(craye1k) != 0) {
> >> +			craye1k->get_led_failed++;
> >> +			return -EIO;
> >> +		}
> >> +	}
> >> +
> >> +	locate = craye1k_get_slot_led(craye1k, slot, true);
> >> +	if (locate == -1) {
> >> +		craye1k->get_led_failed++;
> >> +		return -EIO;
> >> +	}
> >> +	msleep(CRAYE1K_POST_CMD_WAIT_MS);
> >> +
> >> +	fault = craye1k_get_slot_led(craye1k, slot, false);
> >> +	if (fault == -1) {
> >> +		craye1k->get_led_failed++;
> >> +		return -EIO;
> >> +	}
> >> +	msleep(CRAYE1K_POST_CMD_WAIT_MS);
> >> +
> >> +	*status = locate << 1 | fault;
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
> >> +				 u8 *status)
> >> +{
> >> +	int rc;
> >> +
> >> +	if (mutex_lock_interruptible(&craye1k_lock) != 0)
> >> +		return -EINTR;
> >> +
> >> +	if (!craye1k_global) {
> >> +		/* Driver isn't initialized yet */
> >> +		mutex_unlock(&craye1k_lock);
> >> +		return -EOPNOTSUPP;
> >> +	}
> >> +
> >> +	rc =  __craye1k_get_attention_status(hotplug_slot, status, true);
> >> +
> >> +	mutex_unlock(&craye1k_lock);
> >> +	return rc;
> >> +}
> >> +
> >> +int craye1k_set_attention_status(struct hotplug_slot *hotplug_slot,
> >> +				 u8 status)
> >> +{
> >> +	unsigned char slot;
> >> +	int tries = 4;
> >> +	int rc;
> >> +	u8 new_status;
> >> +	struct craye1k *craye1k;
> >> +	bool locate, fault;
> >> +
> >> +	if (mutex_lock_interruptible(&craye1k_lock) != 0)
> >> +		return -EINTR;
> >> +
> >> +	if (!craye1k_global) {
> >> +		/* Driver isn't initialized yet */
> >> +		mutex_unlock(&craye1k_lock);
> >> +		return -EOPNOTSUPP;
> >> +	}
> >> +
> >> +	craye1k = craye1k_global;
> >> +
> >> +	slot = PSN(to_ctrl(hotplug_slot));
> >> +
> >> +	/* Retry to ensure all LEDs are set */
> >> +	while (tries--) {
> >> +		/*
> >> +		 * The node must first set itself to be the primary node before
> >> +		 * setting the slot LEDs (each board has two nodes, or
> >> +		 * "servers" as they're called by the manufacturer).  This can
> >> +		 * lead to contention if both nodes are trying to set the LEDs
> >> +		 * at the same time.
> >> +		 */
> >> +		rc = craye1k_set_primary(craye1k);
> >> +		if (rc != 0) {
> >> +			/* Could not set as primary node.  Just retry again. */
> >> +			continue;
> >> +		}
> >> +
> >> +		/* Write value twice to increase success rate */
> >> +		locate = (status & 0x2) >> 1;
> >> +		craye1k_set_slot_led(craye1k, slot, 1, locate);
> >> +		if (craye1k_set_slot_led(craye1k, slot, 1, locate) != 0) {
> >> +			craye1k->set_led_locate_failed++;
> >> +			continue;	/* fail, retry */
> >> +		}
> >> +
> >> +		msleep(CRAYE1K_POST_CMD_WAIT_MS);
> >> +
> >> +		fault = status & 0x1;
> >> +		craye1k_set_slot_led(craye1k, slot, 0, fault);
> >> +		if (craye1k_set_slot_led(craye1k, slot, 0, fault) != 0) {
> >> +			craye1k->set_led_fault_failed++;
> >> +			continue;	/* fail, retry */
> >> +		}
> >> +
> >> +		msleep(CRAYE1K_POST_CMD_WAIT_MS);
> >> +
> >> +		rc = __craye1k_get_attention_status(hotplug_slot, &new_status,
> >> +						    false);
> >> +
> >> +		msleep(CRAYE1K_POST_CMD_WAIT_MS);
> >> +
> >> +		if (rc == 0 && new_status == status)
> >> +			break;	/* success */
> >> +
> >> +		craye1k->set_led_readback_failed++;
> >> +
> >> +		/*
> >> +		 * At this point we weren't successful in setting the LED and
> >> +		 * need to try again.
> >> +		 *
> >> +		 * Do a random back-off to reduce contention with other server
> >> +		 * node in the unlikely case that both server nodes are trying to
> >> +		 * trying to set a LED at the same time.
> >> +		 *
> >> +		 * The 500ms minimum in the back-off reduced the chance of this
> >> +		 * whole retry loop failing from 1 in 700 to none in 10000.
> >> +		 */
> >> +		msleep(500 + (get_random_long() % 500));
> >> +	}
> >> +	mutex_unlock(&craye1k_lock);
> >> +	if (tries == 0) {
> >> +		craye1k->set_led_failed++;
> >> +		return -EIO;
> >> +	}
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +bool is_craye1k_board(void)
> >> +{
> >> +	return dmi_match(DMI_PRODUCT_NAME, "VSSEP1EC");
> >> +}
> >> +
> >> +int craye1k_init(void)
> >> +{
> >> +	return ipmi_smi_watcher_register(&craye1k_smi_watcher);
> >> +}
> >> +
> >> +MODULE_LICENSE("GPL");
> >> +MODULE_AUTHOR("Tony Hutter <hutter2@llnl.gov>");
> >> +MODULE_DESCRIPTION("Cray E1000 NVMe Slot LED driver");
> >> -- 
> >> 2.43.7
> >>
> >>
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
