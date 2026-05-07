Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEZINW/C/WkpigAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 08 May 2026 13:01:03 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B46C84F56BC
	for <lists+openipmi-developer@lfdr.de>; Fri, 08 May 2026 13:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ShEVh/3GTV93H+/5lYZVQJ/vcrTlPn/+xW8xEHLr44=; b=KlNbTZIkwTHETpao1ebCL7VyD1
	UanWvM4UY9o9VcJgah+3AnT3hfuAQZjDyvYjOH419szip+GnmAQ5uwYx1298JaPDveL0LZYOnPITn
	gqrfXbDAau6mAXjUVqXA8TQOxSevpWekgO0xjzYiosdnG2e1DEVb1YpfvwEE68XRyeXM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wLIwv-0000sl-RK;
	Fri, 08 May 2026 11:00:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wL2jZ-0003jH-VB
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 May 2026 17:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VqorirKRUM8jAxF2dp1dy0L6nVFUfWwHv34gxEBXBK8=; b=J9nrpXXSazDTquL2A/NuDyKPgu
 zbIoVC1dTFr1x3aCtTH99jqcfeBooQXOsqrMkyl0w7vhhjUcOS/Qn5x9wVR4Whpswmr7Kxf+7whpt
 fVpDw9NjMqVyuuc4d1LFA8/LWyz6esuXKdGxKBoDA2YKoYkVyDwC4540Huzt9uqGfBlw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VqorirKRUM8jAxF2dp1dy0L6nVFUfWwHv34gxEBXBK8=; b=PNqwDLddhXKKNy1p+kUsi4n12H
 qyWB1cDNUGAFPH3nHP1/G2TFryvut+8wJbC1JjirNCvFcr/0I5I6ITvme8sFB/I5nDOCxz5A3ZEbS
 1HpaTydTg/7OaUjKXCFAxw8XQpBmXOHYrwebARk0Pfxad83/CxbXmy+Hp0/YSSV0ft20=;
Received: from mail-ej1-f50.google.com ([209.85.218.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wL2jV-0001sC-1A for openipmi-developer@lists.sourceforge.net;
 Thu, 07 May 2026 17:42:01 +0000
Received: by mail-ej1-f50.google.com with SMTP id
 a640c23a62f3a-bc177ebda91so215043766b.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 May 2026 10:41:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778175710; cv=none;
 d=google.com; s=arc-20240605;
 b=KRUyDp46VMtKqBxKbcXnMNAY1t7dW+sm0Z3x8wAG/ymNfwwRTDixmAajTey8iIG1pg
 WPpqRd+xKXY4QlCIxRWyGnytB/q1Oro4EERom94uYtfHmLpjjJSJ5p2pv6LM3GldZJpf
 EyOHeU6+9SSgKzHk6eBcnzOQC475tzIqZ2YRFvZS854eRlYYxRaHpunRgQ+/jiSUMo4M
 h58tvZnfFSU/rXd6masDZ+agzgIuKW4d73TaBoUIvC5m/JEfFXqILK2M1XsoGYkPG2TA
 P2PCQ+D9ZVyRlQ2pwtAU+EilaObWTGXNXZklyfzg+Ieud7yo+0+AXN3bnfpAI2F4oOv7
 7M9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=VqorirKRUM8jAxF2dp1dy0L6nVFUfWwHv34gxEBXBK8=;
 fh=ibLsI1AduzE5y2DoIemTrU5EF+fEWiCPkc203F5NpoQ=;
 b=EZw87qxnkvA3rRqUkrVB201MbSskpyyQFjHGdAV8MBtp/RS7qJSqD/ndguiNOrLFrr
 M71auXLrBGAcmRF3fdNDJX9M4IVjPjqtm1SWl1j8oMxRj8FtqnDhymgY4g4CBt2rICJu
 Qb5RUx2WUHaGwbb3XlVcjLtFDH+GGgDGpTdNvKue/0+yh0GwM8plVzwlXZhfsfIwl1IO
 hgvaahQkBaQPSv1G7J+pV0/qoeEyBk1GkrxToeoKQtW5U3cKlH8r6Cw0SZn6M42fUmoZ
 vxoVSSGCQ0ZMztUALZh14RrDabX7lmwEkVEkddefgVT5Elnhgx8RKT/Tyn26UnYt8zg0
 T2ew==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1778175710; x=1778780510; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=VqorirKRUM8jAxF2dp1dy0L6nVFUfWwHv34gxEBXBK8=;
 b=YPlpH7fgLZQLAmjFQEXpDiMar8r7sVveZkMhtlpXzT+sx+/Tfl9iM8JKzWomO2+Bje
 nt0T/27A4qyBVLzwPSPBkxurwgAUdFouK0aQi8/FFqiwAfvEIBxQgIlh8KUnzBYrVaKK
 AolAHM2Xa6aBwqf2germNY1lU/S7/9uh6U15GypvNwnTXyB1oxOLRKhzIjskHHDWeTka
 5qFdiRo14ZV/YZnba7bWtTqdn9ZZNyBcOvaY0wJGrzc75KhlqsozAaloXGSm7+e9C+lO
 gKxEb5QDkkuTAmbSyYym/3Bq0B9A72+2Ii+Qeya4KiI72LN6SM0ZWf45WYvCzbPHnebQ
 u0AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778175710; x=1778780510;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VqorirKRUM8jAxF2dp1dy0L6nVFUfWwHv34gxEBXBK8=;
 b=gelOAkJoWjcTU20QEsAeDliPMMOpoEggqdIEUIo7PvlM2JecXevU5SFu8amMj3/6UR
 1QHDbgZ/FGz8cZsQMdrRTEjSjncsx88ESrQcGjPyJoAWrd3DdnPVRxva1drxT8Hf/kA4
 TmKmcCul/lxZszPvWqF5+2BVk4j7sOYJD7J3DOWJOhQfRmT9x8/lkWY7+GskDoERA7uU
 DmQ76A77FvE5DXLik436UrZeU//kIYVXnZ7w5LAwyd1GmMX+6ilamBJjBAZsplb3Ivdy
 1Lwccb+4T4RzzktFvVnzy3DGz36zvfXln6voFjRCaxFzb8nVP9fNfLObqmVMEvRRgtG1
 xj6A==
X-Forwarded-Encrypted: i=1;
 AFNElJ96dRMjMzN5EJ+N9gsA3jR5G0quqy6omnKIutM97PoexdzXdyeflZIexLLK1wQn1Ry0hTg3oAvfp7PWuL75BhZSrBk=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwxV/U0LGWudujgDrcQCZrTR0h3P1VvDZtyHDMyxJNkq8+AvQuQ
 LibtSfo+Klpf6OsA2GpNw3GZr8NkrAUh86BEGM/KqsbT+WOMUmoHglb9uY4SxXGaVghtZt8pga7
 9o+2s3UKMSxXRcXwpa+7BPdq/rkuAxmrlTlCUh2CNFUmSohfJqODw
X-Gm-Gg: AeBDiet/PDZ9u+/TUAWbJTLryhkEb6QE7HeLHVCpRPG+qweESxdLYRebCsNoJAPxyHg
 syDCthHzSX7Vt2dABcDpcDXEbpO0h0fyIKYyivjbkUz4YIiHIPzZvUgn8IM+Ct8xzp9XNJy3zNC
 L+f6XnAfiTKdji7+EyU8Z3NCnJrRcnzLSDd0X6p1o40bU6EKaVie3EeD/9dBue7gDI+lbjzsvZr
 sw7x0HG3ys9Nwf5qhgJ88F3IpOn4s/ERwoQDn5y/eDTRngIp5VtI24+2Zk8jM1nigSccpruniyA
 JhHQwh31LO17XfjO8ZYjkioB+xnUQl27+tIS/DhL3qfUN2bSlmq8t9KHzmBl06EJcj4OE9Iu0j1
 orY7XIUlnR3r0QTIbkaw3bg==
X-Received: by 2002:a05:6512:124b:b0:5a2:c0f1:17d2 with SMTP id
 2adb3069b0e04-5a887ae21a4mr3974086e87.10.1778172633134; Thu, 07 May 2026
 09:50:33 -0700 (PDT)
MIME-Version: 1.0
References: <768409a2-0593-49bd-9065-e8b93c60d4ce@llnl.gov>
 <afK8hZfnf1xk6xJ1@mail.minyard.net>
 <02a02a9d-6d8d-4c91-bdad-0a14d0211952@llnl.gov>
In-Reply-To: <02a02a9d-6d8d-4c91-bdad-0a14d0211952@llnl.gov>
From: Corey Minyard <corey@minyard.net>
Date: Thu, 7 May 2026 11:50:21 -0500
X-Gm-Features: AVHnY4Ixe6FF_XU3DtG00NVXbefi-JSjuCpdTPJ_yvHT4nrak0nU9ojbJrABDoI
Message-ID: <CAB9gMfpVauU+pXutk9gOsK-FCO0ZED3jdvXe7TauJDu=yxJR4w@mail.gmail.com>
To: Tony Hutter <hutter2@llnl.gov>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 7,
 2026 at 11:43 AM Tony Hutter <hutter2@llnl.gov>
 wrote: > > Have you tested removing and adding the IPMI interface while this
 is up? > > You can do that with the hotmod interface on IPMI. > > Thanks
 for the tip Corey. I just tried reloading the device via [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.50 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: minyard.net] [URI: msg.data]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 HTML_FONT_SIZE_HUGE    BODY: HTML font size is huge
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1wL2jV-0001sC-1A
X-Mailman-Approved-At: Fri, 08 May 2026 11:00:50 +0000
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
Cc: minyard@acm.org, alok.a.tiwari@oracle.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lukas Wunner <lukas@wunner.de>, Bjorn Helgaas <helgaas@kernel.org>,
 linux-pci@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 mariusz.tkaczyk@linux.intel.com
Content-Type: multipart/mixed; boundary="===============3564256473696651929=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: B46C84F56BC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:hutter2@llnl.gov,m:minyard@acm.org,m:alok.a.tiwari@oracle.com,m:linux-kernel@vger.kernel.org,m:lukas@wunner.de,m:helgaas@kernel.org,m:linux-pci@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:mariusz.tkaczyk@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+,5:+];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,llnl.gov:email]
X-Rspamd-Action: no action

--===============3564256473696651929==
Content-Type: multipart/alternative; boundary="00000000000025c44a06513d143e"

--00000000000025c44a06513d143e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 7, 2026 at 11:43=E2=80=AFAM Tony Hutter <hutter2@llnl.gov> wrot=
e:

> > Have you tested removing and adding the IPMI interface while this is up=
?
> > You can do that with the hotmod interface on IPMI.
>
> Thanks for the tip Corey.  I just tried reloading the device via hotmod,
> and the craye1k driver worked as expected.  Here's the hotmod removal + a=
dd
> dmesg lines:
>

All looks good.  I expected it to work, but it's always good to test.

-corey


>
>   craye1k: Got unexpected smi_gone, iface=3D0
>   ipmi_si hotmod-ipmi-si.3: ipmi_platform: probing via hotmod
>   ipmi_platform: ipmi_si: hotmod: io 0xca2 regsize 1 spacing 1 irq 0
>   ipmi_si: Adding hotmod-specified kcs state machine
>   ipmi_si: Trying hotmod-specified kcs state machine at i/o address 0xca2=
,
> slave address 0x20, irq 0
>   ipmi_si hotmod-ipmi-si.3: IPMI message handler: Found new BMC (man_id:
> 0x002415, prod_id: 0x0101, dev_id: 0x20)
>   ipmi_si hotmod-ipmi-si.3: Cray ClusterStor E1000 slot LEDs registered
>   ipmi_si hotmod-ipmi-si.3: IPMI kcs interface initialized
>
> -Tony
>
> On 4/29/26 19:20, Corey Minyard wrote:
> > On Wed, Apr 29, 2026 at 04:22:55PM -0700, Tony Hutter wrote:
> >> Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000=
.
> >> The driver provides hotplug attention status callbacks for the 24 NVMe
> >> slots on the E1000.  This allows users to access the E1000's locate an=
d
> >> fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
> >> entries.  This driver uses IPMI to communicate with the E1000 controll=
er
> >> to toggle the LEDs.
> >>
> >> Signed-off-by: Tony Hutter <hutter2@llnl.gov>
> >
> > For the IPMI portions:
> > Reviewed-by: Corey Minyard <corey@minyard.net>
> >
> > Have you tested removing and adding the IPMI interface while this is up=
?
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
> >>  - Make craye1k mutex global rather than in craye1k->lock.  This enabl=
es
> >>    handling of craye1k_[get|set]_attention_status() calls before the
> craye1k
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
> >>  - Added WARN_ON() to craye1k_do_message() to sanity check that
> craye1k->lock
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
> >>  - Merge craye1k_do_command_and_netfn() code into craye1k_do_command()=
.
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
> >>  drivers/pci/hotplug/pciehp_craye1k.c    | 687 +++++++++++++++++++++++=
+
> >>  7 files changed, 765 insertions(+), 1 deletion(-)
> >>  create mode 100644 drivers/pci/hotplug/pciehp_craye1k.c
> >>
> >> diff --git a/Documentation/ABI/testing/sysfs-bus-pci
> b/Documentation/ABI/testing/sysfs-bus-pci
> >> index 92debe879ffb..8536d2ff30d1 100644
> >> --- a/Documentation/ABI/testing/sysfs-bus-pci
> >> +++ b/Documentation/ABI/testing/sysfs-bus-pci
> >> @@ -231,6 +231,27 @@ Description:
> >>                  - scXX contains the device subclass;
> >>                  - iXX contains the device class programming interface=
.
> >>
> >> +What:               /sys/bus/pci/slots/.../attention
> >> +Date:               February 2025
> >> +Contact:    linux-pci@vger.kernel.org
> >> +Description:
> >> +            The attention attribute is used to read or write the
> attention
> >> +            status for an enclosure slot.  This is often used to set
> the
> >> +            slot LED value on a NVMe storage enclosure.
> >> +
> >> +            Common values:
> >> +            0 =3D OFF
> >> +            1 =3D ON
> >> +            2 =3D blink
> >> +
> >> +            Using the Cray ClusterStor E1000 extensions:
> >> +            0 =3D fault LED OFF, locate LED OFF
> >> +            1 =3D fault LED ON,  locate LED OFF
> >> +            2 =3D fault LED OFF, locate LED ON
> >> +            3 =3D fault LED ON,  locate LED ON
> >> +
> >> +            Other values are no-op, OFF, or ON depending on the drive=
r.
> >> +
> >>  What:               /sys/bus/pci/slots/.../module
> >>  Date:               June 2009
> >>  Contact:    linux-pci@vger.kernel.org
> >> diff --git a/MAINTAINERS b/MAINTAINERS
> >> index 9ac254f4ec41..861576d60a36 100644
> >> --- a/MAINTAINERS
> >> +++ b/MAINTAINERS
> >> @@ -6543,6 +6543,11 @@ S:    Maintained
> >>  F:  Documentation/filesystems/cramfs.rst
> >>  F:  fs/cramfs/
> >>
> >> +CRAY CLUSTERSTOR E1000 NVME SLOT LED DRIVER EXTENSIONS
> >> +M:  Tony Hutter <hutter2@llnl.gov>
> >> +S:  Maintained
> >> +F:  drivers/pci/hotplug/pciehp_craye1k.c
> >> +
> >>  CRC LIBRARY
> >>  M:  Eric Biggers <ebiggers@kernel.org>
> >>  R:  Ard Biesheuvel <ardb@kernel.org>
> >> diff --git a/drivers/pci/hotplug/Kconfig b/drivers/pci/hotplug/Kconfig
> >> index 3207860b52e4..3cb84e5e13e9 100644
> >> --- a/drivers/pci/hotplug/Kconfig
> >> +++ b/drivers/pci/hotplug/Kconfig
> >> @@ -183,4 +183,14 @@ config HOTPLUG_PCI_S390
> >>
> >>        When in doubt, say Y.
> >>
> >> +config HOTPLUG_PCI_PCIE_CRAY_E1000
> >> +    bool "PCIe Hotplug extensions for Cray ClusterStor E1000"
> >> +    depends on DMI && HOTPLUG_PCI_PCIE && IPMI_HANDLER=3Dy
> >> +    help
> >> +      Say Y here if you have a Cray ClusterStor E1000 and want to
> control
> >> +      your NVMe slot LEDs.  Without this driver it is not possible
> >> +      to control the fault and locate LEDs on the E1000's 24 NVMe
> slots.
> >> +
> >> +      When in doubt, say N.
> >> +
> >>  endif # HOTPLUG_PCI
> >> diff --git a/drivers/pci/hotplug/Makefile b/drivers/pci/hotplug/Makefi=
le
> >> index 40aaf31fe338..82a1f0592d0a 100644
> >> --- a/drivers/pci/hotplug/Makefile
> >> +++ b/drivers/pci/hotplug/Makefile
> >> @@ -66,6 +66,9 @@ pciehp-objs                :=3D      pciehp_core.o  =
 \
> >>                              pciehp_ctrl.o   \
> >>                              pciehp_pci.o    \
> >>                              pciehp_hpc.o
> >> +ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> >> +pciehp-objs         +=3D      pciehp_craye1k.o
> >> +endif
> >>
> >>  shpchp-objs         :=3D      shpchp_core.o   \
> >>                              shpchp_ctrl.o   \
> >> diff --git a/drivers/pci/hotplug/pciehp.h b/drivers/pci/hotplug/pciehp=
.h
> >> index debc79b0adfb..3a8173f3e159 100644
> >> --- a/drivers/pci/hotplug/pciehp.h
> >> +++ b/drivers/pci/hotplug/pciehp.h
> >> @@ -199,6 +199,17 @@ int pciehp_get_raw_indicator_status(struct
> hotplug_slot *h_slot, u8 *status);
> >>
> >>  int pciehp_slot_reset(struct pcie_device *dev);
> >>
> >> +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> >> +int craye1k_init(void);
> >> +bool is_craye1k_board(void);
> >> +int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot, u=
8
> *status);
> >> +int craye1k_set_attention_status(struct hotplug_slot *hotplug_slot, u=
8
> status);
> >> +#else
> >> +#define craye1k_init() (0)
> >> +#define craye1k_get_attention_status NULL
> >> +#define craye1k_set_attention_status NULL
> >> +#endif
> >> +
> >>  static inline const char *slot_name(struct controller *ctrl)
> >>  {
> >>      return hotplug_slot_name(&ctrl->hotplug_slot);
> >> @@ -209,4 +220,13 @@ static inline struct controller *to_ctrl(struct
> hotplug_slot *hotplug_slot)
> >>      return container_of(hotplug_slot, struct controller, hotplug_slot=
);
> >>  }
> >>
> >> +static inline bool is_craye1k_slot(struct controller *ctrl)
> >> +{
> >> +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
> >> +    return (PSN(ctrl) >=3D 1 && PSN(ctrl) <=3D 24 && is_craye1k_board=
());
> >> +#else
> >> +    return false;
> >> +#endif
> >> +}
> >> +
> >>  #endif                              /* _PCIEHP_H */
> >> diff --git a/drivers/pci/hotplug/pciehp_core.c
> b/drivers/pci/hotplug/pciehp_core.c
> >> index f59baa912970..3e8e2b3069bf 100644
> >> --- a/drivers/pci/hotplug/pciehp_core.c
> >> +++ b/drivers/pci/hotplug/pciehp_core.c
> >> @@ -72,6 +72,22 @@ static int init_slot(struct controller *ctrl)
> >>      } else if (ctrl->pcie->port->hotplug_user_indicators) {
> >>              ops->get_attention_status =3D
> pciehp_get_raw_indicator_status;
> >>              ops->set_attention_status =3D
> pciehp_set_raw_indicator_status;
> >> +    } else if (is_craye1k_slot(ctrl)) {
> >> +            /*
> >> +             * The Cray E1000 driver controls slots 1-24.  Initialize
> the
> >> +             * Cray E1000 driver when slot 1 is seen.
> >> +             */
> >> +            if (PSN(ctrl) =3D=3D 1) {
> >> +                    retval =3D craye1k_init();
> >> +                    if (retval) {
> >> +                            ctrl_err(ctrl,
> >> +                                     "Error loading Cray E1000
> extensions");
> >> +                            kfree(ops);
> >> +                            return retval;
> >> +                    }
> >> +            }
> >> +            ops->get_attention_status =3D craye1k_get_attention_statu=
s;
> >> +            ops->set_attention_status =3D craye1k_set_attention_statu=
s;
> >>      }
> >>
> >>      /* register this slot with the hotplug pci core */
> >> @@ -376,8 +392,10 @@ int __init pcie_hp_init(void)
> >>
> >>      retval =3D pcie_port_service_register(&hpdriver_portdrv);
> >>      pr_debug("pcie_port_service_register =3D %d\n", retval);
> >> -    if (retval)
> >> +    if (retval) {
> >>              pr_debug("Failure to register service\n");
> >> +            return retval;
> >> +    }
> >>
> >>      return retval;
> >>  }
> >> diff --git a/drivers/pci/hotplug/pciehp_craye1k.c
> b/drivers/pci/hotplug/pciehp_craye1k.c
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
> >> + * This driver controls the NVMe slot LEDs on the Cray ClusterStore
> E1000.
> >> + * It provides hotplug attention status callbacks for the 24 NVMe
> slots on
> >> + * the E1000.  This allows users to access the E1000's locate and fau=
lt
> >> + * LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
> entries.
> >> + * This driver uses IPMI to communicate with the E1000 controller to
> toggle
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
> >> +#define CRAYE1K_SUBCMD_GET_LED              0x0
> >> +#define CRAYE1K_SUBCMD_SET_LED              0x1
> >> +#define CRAYE1K_SUBCMD_SET_PRIMARY  0x1
> >> +
> >> +/*
> >> + * Milliseconds to wait after get/set LED command.  200ms value found
> though
> >> + * experimentation
> >> + */
> >> +#define CRAYE1K_POST_CMD_WAIT_MS    200
> >> +
> >> +struct craye1k {
> >> +    struct device *dev;   /* BMC device */
> >> +    struct mutex lock;
> >> +    struct completion read_complete;
> >> +    struct ipmi_addr address;
> >> +    struct ipmi_user *user;
> >> +    int iface;
> >> +
> >> +    long tx_msg_id;
> >> +    struct kernel_ipmi_msg tx_msg;
> >> +    unsigned char tx_msg_data[IPMI_MAX_MSG_LENGTH];
> >> +    unsigned char rx_msg_data[IPMI_MAX_MSG_LENGTH];
> >> +    unsigned long rx_msg_len;
> >> +    unsigned char rx_result;        /* IPMI completion code */
> >> +
> >> +    /* Parent dir for all our debugfs entries */
> >> +    struct dentry *parent;
> >> +
> >> +    /* debugfs stats */
> >> +    u64 check_primary;
> >> +    u64 check_primary_failed;
> >> +    u64 was_already_primary;
> >> +    u64 was_not_already_primary;
> >> +    u64 set_primary;
> >> +    u64 set_initial_primary_failed;
> >> +    u64 set_primary_failed;
> >> +    u64 set_led_locate_failed;
> >> +    u64 set_led_fault_failed;
> >> +    u64 set_led_readback_failed;
> >> +    u64 set_led_failed;
> >> +    u64 get_led_failed;
> >> +    u64 completion_timeout;
> >> +    u64 wrong_msgid;
> >> +    u64 request_failed;
> >> +
> >> +    /* debugfs configuration options */
> >> +
> >> +    /* Print info on spurious IPMI messages */
> >> +    bool print_errors;
> >> +
> >> +    /* Retries for kernel IPMI layer */
> >> +    u32 ipmi_retries;
> >> +
> >> +    /* Timeout in ms for IPMI (0 =3D use IPMI default_retry_ms) */
> >> +    u32 ipmi_timeout_ms;
> >> +
> >> +    /* Timeout in ms to wait for E1000 message completion */
> >> +    u32 completion_timeout_ms;
> >> +};
> >> +
> >> +/*
> >> + * Make our craye1k a global so get/set_attention_status() can access
> it.
> >> + * This is safe since there's only one node controller on the board,
> and so it's
> >> + * impossible to instantiate more than one craye1k.
> >> + */
> >> +static struct craye1k *craye1k_global;
> >> +static DEFINE_MUTEX(craye1k_lock);
> >> +
> >> +/*
> >> + * The E1000 command timeout and retry values were found though
> experimentation
> >> + * by looking at the error counters.  Keep the counters around to
> troubleshoot
> >> + * any issues with our current timeout/retry values.
> >> + */
> >> +static struct dentry *
> >> +craye1k_debugfs_init(struct craye1k *craye1k)
> >> +{
> >> +    umode_t mode =3D 0644;
> >> +    struct dentry *parent =3D debugfs_create_dir("pciehp_craye1k", NU=
LL);
> >> +
> >> +    if (IS_ERR(parent))
> >> +            return NULL;
> >> +
> >> +    debugfs_create_x64("check_primary", mode, parent,
> >> +                       &craye1k->check_primary);
> >> +    debugfs_create_x64("check_primary_failed", mode, parent,
> >> +                       &craye1k->check_primary_failed);
> >> +    debugfs_create_x64("was_already_primary", mode, parent,
> >> +                       &craye1k->was_already_primary);
> >> +    debugfs_create_x64("was_not_already_primary", mode, parent,
> >> +                       &craye1k->was_not_already_primary);
> >> +    debugfs_create_x64("set_primary", mode, parent,
> >> +                       &craye1k->set_primary);
> >> +    debugfs_create_x64("set_initial_primary_failed", mode, parent,
> >> +                       &craye1k->set_initial_primary_failed);
> >> +    debugfs_create_x64("set_primary_failed", mode, parent,
> >> +                       &craye1k->set_primary_failed);
> >> +    debugfs_create_x64("set_led_locate_failed", mode, parent,
> >> +                       &craye1k->set_led_locate_failed);
> >> +    debugfs_create_x64("set_led_fault_failed", mode, parent,
> >> +                       &craye1k->set_led_fault_failed);
> >> +    debugfs_create_x64("set_led_readback_failed", mode, parent,
> >> +                       &craye1k->set_led_readback_failed);
> >> +    debugfs_create_x64("set_led_failed", mode, parent,
> >> +                       &craye1k->set_led_failed);
> >> +    debugfs_create_x64("get_led_failed", mode, parent,
> >> +                       &craye1k->get_led_failed);
> >> +    debugfs_create_x64("completion_timeout", mode, parent,
> >> +                       &craye1k->completion_timeout);
> >> +    debugfs_create_x64("wrong_msgid", mode, parent,
> >> +                       &craye1k->wrong_msgid);
> >> +    debugfs_create_x64("request_failed", mode, parent,
> >> +                       &craye1k->request_failed);
> >> +
> >> +    debugfs_create_x32("ipmi_retries", mode, parent,
> >> +                       &craye1k->ipmi_retries);
> >> +    debugfs_create_x32("ipmi_timeout_ms", mode, parent,
> >> +                       &craye1k->ipmi_timeout_ms);
> >> +    debugfs_create_x32("completion_timeout_ms", mode, parent,
> >> +                       &craye1k->completion_timeout_ms);
> >> +    debugfs_create_bool("print_errors", mode, parent,
> >> +                        &craye1k->print_errors);
> >> +
> >> +    /* Return parent dir dentry */
> >> +    return parent;
> >> +}
> >> +
> >> +/*
> >> + * craye1k_msg_handler() - IPMI message response handler
> >> + */
> >> +static void craye1k_msg_handler(struct ipmi_recv_msg *msg, void
> *user_msg_data)
> >> +{
> >> +    struct craye1k *craye1k =3D user_msg_data;
> >> +
> >> +    if (msg->msgid !=3D craye1k->tx_msg_id) {
> >> +            craye1k->wrong_msgid++;
> >> +            if (craye1k->print_errors) {
> >> +                    dev_warn_ratelimited(craye1k->dev,
> >> +                                         "rx msgid %ld !=3D %ld",
> >> +                                         msg->msgid,
> craye1k->tx_msg_id);
> >> +            }
> >> +            ipmi_free_recv_msg(msg);
> >> +            return;
> >> +    }
> >> +
> >> +    /* Set rx_result to the IPMI completion code */
> >> +    if (msg->msg.data_len > 0)
> >> +            craye1k->rx_result =3D msg->msg.data[0];
> >> +    else
> >> +            craye1k->rx_result =3D IPMI_UNKNOWN_ERR_COMPLETION_CODE;
> >> +
> >> +    if (msg->msg.data_len > 1) {
> >> +            /* Exclude completion code from data bytes */
> >> +            craye1k->rx_msg_len =3D msg->msg.data_len - 1;
> >> +            memcpy(craye1k->rx_msg_data, msg->msg.data + 1,
> >> +                   craye1k->rx_msg_len);
> >> +    } else {
> >> +            craye1k->rx_msg_len =3D 0;
> >> +    }
> >> +
> >> +    ipmi_free_recv_msg(msg);
> >> +
> >> +    complete(&craye1k->read_complete);
> >> +}
> >> +
> >> +static const struct ipmi_user_hndl craye1k_user_hndl =3D {
> >> +    .ipmi_recv_hndl =3D craye1k_msg_handler
> >> +};
> >> +
> >> +static void craye1k_new_smi(int iface, struct device *dev)
> >> +{
> >> +    int rc;
> >> +    struct craye1k *craye1k;
> >> +
> >> +    craye1k =3D kzalloc(sizeof(*craye1k), GFP_KERNEL);
> >> +    if (!craye1k)
> >> +            return;
> >> +
> >> +    craye1k->address.addr_type =3D IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
> >> +    craye1k->address.channel =3D IPMI_BMC_CHANNEL;
> >> +    craye1k->iface =3D iface;
> >> +    craye1k->dev =3D dev;
> >> +    craye1k->tx_msg.data =3D craye1k->tx_msg_data;
> >> +    craye1k->ipmi_retries =3D 4;
> >> +    craye1k->ipmi_timeout_ms =3D 500;
> >> +    craye1k->completion_timeout_ms =3D 300;
> >> +
> >> +    init_completion(&craye1k->read_complete);
> >> +
> >> +    dev_set_drvdata(dev, craye1k);
> >> +
> >> +    rc =3D ipmi_create_user(craye1k->iface, &craye1k_user_hndl, craye=
1k,
> >> +                          &craye1k->user);
> >> +    if (rc < 0) {
> >> +            dev_err(dev, "Unable to register IPMI user, iface %d\n",
> >> +                    craye1k->iface);
> >> +            kfree(craye1k);
> >> +            dev_set_drvdata(dev, NULL);
> >> +            return;
> >> +    }
> >> +
> >> +    mutex_lock(&craye1k_lock);
> >> +
> >> +    /* There's only one node controller so driver data should not be
> set */
> >> +    WARN_ON(craye1k_global);
> >> +
> >> +    craye1k_global =3D craye1k;
> >> +    craye1k->parent =3D craye1k_debugfs_init(craye1k);
> >> +    mutex_unlock(&craye1k_lock);
> >> +    if (!craye1k->parent)
> >> +            dev_warn(dev, "Cannot create debugfs");
> >> +
> >> +    dev_info(dev, "Cray ClusterStor E1000 slot LEDs registered");
> >> +}
> >> +
> >> +static void craye1k_smi_gone(int iface)
> >> +{
> >> +    pr_warn("craye1k: Got unexpected smi_gone, iface=3D%d", iface);
> >> +
> >> +    mutex_lock(&craye1k_lock);
> >> +    if (craye1k_global) {
> >> +            debugfs_remove_recursive(craye1k_global->parent);
> >> +            kfree(craye1k_global);
> >> +            craye1k_global =3D NULL;
> >> +    }
> >> +    mutex_unlock(&craye1k_lock);
> >> +}
> >> +
> >> +static struct ipmi_smi_watcher craye1k_smi_watcher =3D {
> >> +    .owner =3D THIS_MODULE,
> >> +    .new_smi =3D craye1k_new_smi,
> >> +    .smi_gone =3D craye1k_smi_gone
> >> +};
> >> +
> >> +/*
> >> + * craye1k_send_message() - Send the message already setup in 'craye1=
k'
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Return: 0 on success, non-zero on error.
> >> + */
> >> +static int craye1k_send_message(struct craye1k *craye1k)
> >> +{
> >> +    int rc;
> >> +
> >> +    rc =3D ipmi_validate_addr(&craye1k->address,
> sizeof(craye1k->address));
> >> +    if (rc) {
> >> +            dev_err_ratelimited(craye1k->dev, "ipmi_validate_addr() =
=3D
> %d\n",
> >> +                                rc);
> >> +            return rc;
> >> +    }
> >> +
> >> +    craye1k->tx_msg_id++;
> >> +
> >> +    rc =3D ipmi_request_settime(craye1k->user, &craye1k->address,
> >> +                              craye1k->tx_msg_id, &craye1k->tx_msg,
> craye1k,
> >> +                              0, craye1k->ipmi_retries,
> >> +                              craye1k->ipmi_timeout_ms);
> >> +
> >> +    if (rc) {
> >> +            craye1k->request_failed++;
> >> +            return rc;
> >> +    }
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +/*
> >> + * craye1k_do_message() - Send the message in 'craye1k' and wait for =
a
> response
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Return: 0 on success, non-zero on error.
> >> + */
> >> +static int craye1k_do_message(struct craye1k *craye1k)
> >> +{
> >> +    int rc;
> >> +    struct completion *read_complete =3D &craye1k->read_complete;
> >> +    unsigned long tout =3D
> msecs_to_jiffies(craye1k->completion_timeout_ms);
> >> +
> >> +    WARN_ON(!mutex_is_locked(&craye1k_lock));
> >> +
> >> +    rc =3D craye1k_send_message(craye1k);
> >> +    if (rc)
> >> +            return rc;
> >> +
> >> +    rc =3D wait_for_completion_killable_timeout(read_complete, tout);
> >> +    if (rc =3D=3D 0) {
> >> +            /* timed out */
> >> +            craye1k->completion_timeout++;
> >> +            return -ETIME;
> >> +    }
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +/*
> >> + * __craye1k_do_command() - Do an IPMI command
> >> + *
> >> + * Send a command with optional data bytes, and read back response
> bytes.
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: 0 on success, non-zero on error.
> >> + */
> >> +static int __craye1k_do_command(struct craye1k *craye1k, u8 netfn, u8
> cmd,
> >> +                            u8 *send_data, u8 send_data_len, u8
> *recv_data,
> >> +                            u8 recv_data_len)
> >> +{
> >> +    int rc;
> >> +
> >> +    craye1k->tx_msg.netfn =3D netfn;
> >> +    craye1k->tx_msg.cmd =3D cmd;
> >> +
> >> +    if (send_data) {
> >> +            memcpy(&craye1k->tx_msg_data[0], send_data, send_data_len=
);
> >> +            craye1k->tx_msg.data_len =3D send_data_len;
> >> +    } else {
> >> +            craye1k->tx_msg_data[0] =3D 0;
> >> +            craye1k->tx_msg.data_len =3D 0;
> >> +    }
> >> +
> >> +    rc =3D craye1k_do_message(craye1k);
> >> +    if (rc =3D=3D 0)
> >> +            memcpy(recv_data, craye1k->rx_msg_data, recv_data_len);
> >> +
> >> +    return rc;
> >> +}
> >> +
> >> +/*
> >> + * craye1k_do_command() - Do a Cray E1000 specific IPMI command.
> >> + * @cmd: Cray E1000 specific command
> >> + * @send_data:  Data to send after the command
> >> + * @send_data_len: Data length
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: the last byte from the response or 0 if response had no
> response
> >> + * data bytes, else -1 on error.
> >> + */
> >> +static int craye1k_do_command(struct craye1k *craye1k, u8 cmd, u8
> *send_data,
> >> +                          u8 send_data_len)
> >> +{
> >> +    int rc;
> >> +
> >> +    rc =3D __craye1k_do_command(craye1k, CRAYE1K_CMD_NETFN, cmd,
> send_data,
> >> +                              send_data_len, NULL, 0);
> >> +    if (rc !=3D 0) {
> >> +            /* Error attempting command */
> >> +            return -1;
> >> +    }
> >> +
> >> +    if (craye1k->tx_msg.data_len =3D=3D 0)
> >> +            return 0;
> >> +
> >> +    /* Return last received byte value */
> >> +    return craye1k->rx_msg_data[craye1k->rx_msg_len - 1];
> >> +}
> >> +
> >> +/*
> >> + * __craye1k_set_primary() - Tell the BMC we want to be the primary
> server
> >> + *
> >> + * An E1000 board has two physical servers on it.  In order to set a
> slot
> >> + * NVMe LED, this server needs to first tell the BMC that it's the
> primary
> >> + * server.
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: 0 on success, non-zero on error.
> >> + */
> >> +static int __craye1k_set_primary(struct craye1k *craye1k)
> >> +{
> >> +    u8 bytes[2] =3D {CRAYE1K_SUBCMD_SET_PRIMARY, 1};  /* set primary =
to
> 1 */
> >> +
> >> +    craye1k->set_primary++;
> >> +    return craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, bytes, 2)=
;
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
> >> +    u8 byte =3D 0;
> >> +    int rc;
> >> +
> >> +    /* Response byte is 0x1 on success */
> >> +    rc =3D craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, &byte, 1)=
;
> >> +    craye1k->check_primary++;
> >> +    if (rc =3D=3D 0x1)
> >> +            return true;   /* success */
> >> +
> >> +    craye1k->check_primary_failed++;
> >> +    return false;   /* We are not the primary server node */
> >> +}
> >> +
> >> +/*
> >> + * craye1k_set_primary() - Attempt to set ourselves as the primary
> server
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: 0 on success, -1 otherwise.
> >> + */
> >> +static int craye1k_set_primary(struct craye1k *craye1k)
> >> +{
> >> +    int tries =3D 10;
> >> +
> >> +    if (craye1k_is_primary(craye1k)) {
> >> +            craye1k->was_already_primary++;
> >> +            return 0;
> >> +    }
> >> +    craye1k->was_not_already_primary++;
> >> +
> >> +    /* delay found through experimentation */
> >> +    msleep(300);
> >> +
> >> +    if (__craye1k_set_primary(craye1k) !=3D 0) {
> >> +            craye1k->set_initial_primary_failed++;
> >> +            return -1;      /* error */
> >> +    }
> >> +
> >> +    /*
> >> +     * It can take 2 to 3 seconds after setting primary for the
> controller
> >> +     * to report that it is the primary.
> >> +     */
> >> +    while (tries--) {
> >> +            msleep(500);
> >> +            if (craye1k_is_primary(craye1k))
> >> +                    break;
> >> +    }
> >> +
> >> +    if (tries =3D=3D 0) {
> >> +            craye1k->set_primary_failed++;
> >> +            return -1;      /* never reported that it's primary */
> >> +    }
> >> +
> >> +    /* Wait for primary switch to finish */
> >> +    msleep(1500);
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +/*
> >> + * craye1k_get_slot_led() - Get slot LED value
> >> + * @slot: Slot number (1-24)
> >> + * @is_locate_led: 0 =3D get fault LED value, 1 =3D get locate LED va=
lue
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: slot value on success, -1 on failure.
> >> + */
> >> +static int craye1k_get_slot_led(struct craye1k *craye1k, unsigned cha=
r
> slot,
> >> +                            bool is_locate_led)
> >> +{
> >> +    u8 bytes[2];
> >> +    u8 cmd;
> >> +
> >> +    bytes[0] =3D CRAYE1K_SUBCMD_GET_LED;
> >> +    bytes[1] =3D slot;
> >> +
> >> +    cmd =3D is_locate_led ? CRAYE1K_CMD_LOCATE_LED :
> CRAYE1K_CMD_FAULT_LED;
> >> +
> >> +    return craye1k_do_command(craye1k, cmd, bytes, 2);
> >> +}
> >> +
> >> +/*
> >> + * craye1k_set_slot_led() - Attempt to set the locate/fault LED to a
> value
> >> + * @slot: Slot number (1-24)
> >> + * @is_locate_led: 0 =3D use fault LED, 1 =3D use locate LED
> >> + * @value: Value to set (0 or 1)
> >> + *
> >> + * Check the LED value after calling this function to ensure it has
> been set
> >> + * properly.
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: 0 on success, non-zero on failure.
> >> + */
> >> +static int craye1k_set_slot_led(struct craye1k *craye1k, unsigned cha=
r
> slot,
> >> +                            unsigned char is_locate_led,
> >> +                            unsigned char value)
> >> +{
> >> +    u8 bytes[3];
> >> +    u8 cmd;
> >> +
> >> +    bytes[0] =3D CRAYE1K_SUBCMD_SET_LED;
> >> +    bytes[1] =3D slot;
> >> +    bytes[2] =3D value;
> >> +
> >> +    cmd =3D is_locate_led ? CRAYE1K_CMD_LOCATE_LED :
> CRAYE1K_CMD_FAULT_LED;
> >> +
> >> +    return craye1k_do_command(craye1k, cmd, bytes, 3);
> >> +}
> >> +
> >> +/*
> >> + * __craye1k_get_attention_status() - Get LED value
> >> + *
> >> + * Context: craye1k_lock is already held.
> >> + * Returns: 0 on success, -EIO on failure.
> >> + */
> >> +static int __craye1k_get_attention_status(struct hotplug_slot
> *hotplug_slot,
> >> +                                      u8 *status, bool set_primary)
> >> +{
> >> +    unsigned char slot;
> >> +    int locate, fault;
> >> +    struct craye1k *craye1k;
> >> +
> >> +    craye1k =3D craye1k_global;
> >> +    slot =3D PSN(to_ctrl(hotplug_slot));
> >> +
> >> +    if (set_primary) {
> >> +            if (craye1k_set_primary(craye1k) !=3D 0) {
> >> +                    craye1k->get_led_failed++;
> >> +                    return -EIO;
> >> +            }
> >> +    }
> >> +
> >> +    locate =3D craye1k_get_slot_led(craye1k, slot, true);
> >> +    if (locate =3D=3D -1) {
> >> +            craye1k->get_led_failed++;
> >> +            return -EIO;
> >> +    }
> >> +    msleep(CRAYE1K_POST_CMD_WAIT_MS);
> >> +
> >> +    fault =3D craye1k_get_slot_led(craye1k, slot, false);
> >> +    if (fault =3D=3D -1) {
> >> +            craye1k->get_led_failed++;
> >> +            return -EIO;
> >> +    }
> >> +    msleep(CRAYE1K_POST_CMD_WAIT_MS);
> >> +
> >> +    *status =3D locate << 1 | fault;
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
> >> +                             u8 *status)
> >> +{
> >> +    int rc;
> >> +
> >> +    if (mutex_lock_interruptible(&craye1k_lock) !=3D 0)
> >> +            return -EINTR;
> >> +
> >> +    if (!craye1k_global) {
> >> +            /* Driver isn't initialized yet */
> >> +            mutex_unlock(&craye1k_lock);
> >> +            return -EOPNOTSUPP;
> >> +    }
> >> +
> >> +    rc =3D  __craye1k_get_attention_status(hotplug_slot, status, true=
);
> >> +
> >> +    mutex_unlock(&craye1k_lock);
> >> +    return rc;
> >> +}
> >> +
> >> +int craye1k_set_attention_status(struct hotplug_slot *hotplug_slot,
> >> +                             u8 status)
> >> +{
> >> +    unsigned char slot;
> >> +    int tries =3D 4;
> >> +    int rc;
> >> +    u8 new_status;
> >> +    struct craye1k *craye1k;
> >> +    bool locate, fault;
> >> +
> >> +    if (mutex_lock_interruptible(&craye1k_lock) !=3D 0)
> >> +            return -EINTR;
> >> +
> >> +    if (!craye1k_global) {
> >> +            /* Driver isn't initialized yet */
> >> +            mutex_unlock(&craye1k_lock);
> >> +            return -EOPNOTSUPP;
> >> +    }
> >> +
> >> +    craye1k =3D craye1k_global;
> >> +
> >> +    slot =3D PSN(to_ctrl(hotplug_slot));
> >> +
> >> +    /* Retry to ensure all LEDs are set */
> >> +    while (tries--) {
> >> +            /*
> >> +             * The node must first set itself to be the primary node
> before
> >> +             * setting the slot LEDs (each board has two nodes, or
> >> +             * "servers" as they're called by the manufacturer).  Thi=
s
> can
> >> +             * lead to contention if both nodes are trying to set the
> LEDs
> >> +             * at the same time.
> >> +             */
> >> +            rc =3D craye1k_set_primary(craye1k);
> >> +            if (rc !=3D 0) {
> >> +                    /* Could not set as primary node.  Just retry
> again. */
> >> +                    continue;
> >> +            }
> >> +
> >> +            /* Write value twice to increase success rate */
> >> +            locate =3D (status & 0x2) >> 1;
> >> +            craye1k_set_slot_led(craye1k, slot, 1, locate);
> >> +            if (craye1k_set_slot_led(craye1k, slot, 1, locate) !=3D 0=
) {
> >> +                    craye1k->set_led_locate_failed++;
> >> +                    continue;       /* fail, retry */
> >> +            }
> >> +
> >> +            msleep(CRAYE1K_POST_CMD_WAIT_MS);
> >> +
> >> +            fault =3D status & 0x1;
> >> +            craye1k_set_slot_led(craye1k, slot, 0, fault);
> >> +            if (craye1k_set_slot_led(craye1k, slot, 0, fault) !=3D 0)=
 {
> >> +                    craye1k->set_led_fault_failed++;
> >> +                    continue;       /* fail, retry */
> >> +            }
> >> +
> >> +            msleep(CRAYE1K_POST_CMD_WAIT_MS);
> >> +
> >> +            rc =3D __craye1k_get_attention_status(hotplug_slot,
> &new_status,
> >> +                                                false);
> >> +
> >> +            msleep(CRAYE1K_POST_CMD_WAIT_MS);
> >> +
> >> +            if (rc =3D=3D 0 && new_status =3D=3D status)
> >> +                    break;  /* success */
> >> +
> >> +            craye1k->set_led_readback_failed++;
> >> +
> >> +            /*
> >> +             * At this point we weren't successful in setting the LED
> and
> >> +             * need to try again.
> >> +             *
> >> +             * Do a random back-off to reduce contention with other
> server
> >> +             * node in the unlikely case that both server nodes are
> trying to
> >> +             * trying to set a LED at the same time.
> >> +             *
> >> +             * The 500ms minimum in the back-off reduced the chance o=
f
> this
> >> +             * whole retry loop failing from 1 in 700 to none in 1000=
0.
> >> +             */
> >> +            msleep(500 + (get_random_long() % 500));
> >> +    }
> >> +    mutex_unlock(&craye1k_lock);
> >> +    if (tries =3D=3D 0) {
> >> +            craye1k->set_led_failed++;
> >> +            return -EIO;
> >> +    }
> >> +
> >> +    return 0;
> >> +}
> >> +
> >> +bool is_craye1k_board(void)
> >> +{
> >> +    return dmi_match(DMI_PRODUCT_NAME, "VSSEP1EC");
> >> +}
> >> +
> >> +int craye1k_init(void)
> >> +{
> >> +    return ipmi_smi_watcher_register(&craye1k_smi_watcher);
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
>

--00000000000025c44a06513d143e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote gmail_quote_container"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, May 7, 2026 at 11:43=E2=80=AFAM To=
ny Hutter &lt;<a href=3D"mailto:hutter2@llnl.gov">hutter2@llnl.gov</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; Have=
 you tested removing and adding the IPMI interface while this is up?<br>
&gt; You can do that with the hotmod interface on IPMI.<br>
<br>
Thanks for the tip Corey.=C2=A0 I just tried reloading the device via hotmo=
d, and the craye1k driver worked as expected.=C2=A0 Here&#39;s the hotmod r=
emoval + add dmesg lines:<br></blockquote><div><br></div><div>All looks goo=
d.=C2=A0 I expected it to work, but it&#39;s always good to test.</div><div=
><br></div><div>-corey</div><div>=C2=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
<br>
=C2=A0 craye1k: Got unexpected smi_gone, iface=3D0<br>
=C2=A0 ipmi_si hotmod-ipmi-si.3: ipmi_platform: probing via hotmod<br>
=C2=A0 ipmi_platform: ipmi_si: hotmod: io 0xca2 regsize 1 spacing 1 irq 0<b=
r>
=C2=A0 ipmi_si: Adding hotmod-specified kcs state machine<br>
=C2=A0 ipmi_si: Trying hotmod-specified kcs state machine at i/o address 0x=
ca2, slave address 0x20, irq 0<br>
=C2=A0 ipmi_si hotmod-ipmi-si.3: IPMI message handler: Found new BMC (man_i=
d: 0x002415, prod_id: 0x0101, dev_id: 0x20)<br>
=C2=A0 ipmi_si hotmod-ipmi-si.3: Cray ClusterStor E1000 slot LEDs registere=
d<br>
=C2=A0 ipmi_si hotmod-ipmi-si.3: IPMI kcs interface initialized<br>
<br>
-Tony<br>
<br>
On 4/29/26 19:20, Corey Minyard wrote:<br>
&gt; On Wed, Apr 29, 2026 at 04:22:55PM -0700, Tony Hutter wrote:<br>
&gt;&gt; Add driver to control the NVMe slot LEDs on the Cray ClusterStor E=
1000.<br>
&gt;&gt; The driver provides hotplug attention status callbacks for the 24 =
NVMe<br>
&gt;&gt; slots on the E1000.=C2=A0 This allows users to access the E1000&#3=
9;s locate and<br>
&gt;&gt; fault LEDs via the normal /sys/bus/pci/slots/&lt;slot&gt;/attentio=
n sysfs<br>
&gt;&gt; entries.=C2=A0 This driver uses IPMI to communicate with the E1000=
 controller<br>
&gt;&gt; to toggle the LEDs.<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Tony Hutter &lt;<a href=3D"mailto:hutter2@llnl.gov"=
 target=3D"_blank">hutter2@llnl.gov</a>&gt;<br>
&gt; <br>
&gt; For the IPMI portions:<br>
&gt; Reviewed-by: Corey Minyard &lt;<a href=3D"mailto:corey@minyard.net" ta=
rget=3D"_blank">corey@minyard.net</a>&gt;<br>
&gt; <br>
&gt; Have you tested removing and adding the IPMI interface while this is u=
p?<br>
&gt; You can do that with the hotmod interface on IPMI.=C2=A0 I didn&#39;t =
see any<br>
&gt; issues, but it&#39;s always good to test.<br>
&gt; <br>
&gt; -corey<br>
&gt; <br>
&gt;&gt; ---<br>
&gt;&gt; Changes in v8:<br>
&gt;&gt;=C2=A0 - Remove unused variable in craye1k_get_attention_status().<=
br>
&gt;&gt;<br>
&gt;&gt; Changes in v7:<br>
&gt;&gt;=C2=A0 - Update sysfs-bus-pci text from feedback.<br>
&gt;&gt;=C2=A0 - Add DMI dependency to Kconfig.<br>
&gt;&gt;=C2=A0 - Refactor pciehp_core.c to remove CONFIG_HOTPLUG_PCI_PCIE_C=
RAY_E1000<br>
&gt;&gt;=C2=A0 =C2=A0 code blocks.<br>
&gt;&gt;=C2=A0 - Move errno.h #include into correct alphabetical order.<br>
&gt;&gt;=C2=A0 - Add comment describing the reasoning for the debugfs count=
ers.<br>
&gt;&gt;=C2=A0 - Move craye1k_init() call from pcie_hp_init() to init_slot(=
).<br>
&gt;&gt;=C2=A0 - Make craye1k mutex global rather than in craye1k-&gt;lock.=
=C2=A0 This enables<br>
&gt;&gt;=C2=A0 =C2=A0 handling of craye1k_[get|set]_attention_status() call=
s before the craye1k<br>
&gt;&gt;=C2=A0 =C2=A0 driver is initialized.<br>
&gt;&gt;=C2=A0 - Do driver cleanup on craye1k_smi_gone().<br>
&gt;&gt;<br>
&gt;&gt; Changes in v6:<br>
&gt;&gt;=C2=A0 - Change some dev_info_ratelimited() calls to dev_info().<br=
>
&gt;&gt;=C2=A0 - Don&#39;t call craye1k_init() if pcie_port_service_registe=
r() fails.<br>
&gt;&gt;=C2=A0 - Fix stray indent in #define CRAYE1K_POST_CMD_WAIT_MS<br>
&gt;&gt;<br>
&gt;&gt; Changes in v5:<br>
&gt;&gt;=C2=A0 - Removed unnecessary ipmi_smi.h #include.<br>
&gt;&gt;=C2=A0 - Added WARN_ON() to craye1k_do_message() to sanity check th=
at craye1k-&gt;lock<br>
&gt;&gt;=C2=A0 =C2=A0 is held.<br>
&gt;&gt;=C2=A0 - Added additional comments for when craye1k-&gt;lock should=
 be held.<br>
&gt;&gt;<br>
&gt;&gt; Changes in v4:<br>
&gt;&gt;=C2=A0 - Fix typo in Kconfig: &quot;is it&quot; -&gt;=C2=A0 &quot;i=
t is&quot;<br>
&gt;&gt;=C2=A0 - Rename some #defines to CRAYE1K_SUBCMD_*<br>
&gt;&gt;=C2=A0 - Use IS_ERR() check in craye1k_debugfs_init()<br>
&gt;&gt;=C2=A0 - Return -EIO instead of -EINVAL when LED value check fails<=
br>
&gt;&gt;<br>
&gt;&gt; Changes in v3:<br>
&gt;&gt;=C2=A0 - Add &#39;attention&#39; values in Documentation/ABI/testin=
g/sysfs-bus-pci.<br>
&gt;&gt;=C2=A0 - Remove ACPI_PCI_SLOT dependency.<br>
&gt;&gt;=C2=A0 - Cleanup craye1k_do_message() error checking.<br>
&gt;&gt;=C2=A0 - Skip unneeded memcpy() on failure in __craye1k_do_command(=
).<br>
&gt;&gt;=C2=A0 - Merge craye1k_do_command_and_netfn() code into craye1k_do_=
command().<br>
&gt;&gt;=C2=A0 - Make craye1k_is_primary() return boolean.<br>
&gt;&gt;=C2=A0 - Return negative error code on failure in craye1k_set_prima=
ry().<br>
&gt;&gt;<br>
&gt;&gt; Changes in v2:<br>
&gt;&gt;=C2=A0 - Integrated E1000 code into the pciehp driver as an built-i=
n<br>
&gt;&gt;=C2=A0 =C2=A0 extention rather than as a standalone module.<br>
&gt;&gt;=C2=A0 - Moved debug tunables and counters to debugfs.<br>
&gt;&gt;=C2=A0 - Removed forward declarations.<br>
&gt;&gt;=C2=A0 - Kept the /sys/bus/pci/slots/&lt;slot&gt;/attention interfa=
ce rather<br>
&gt;&gt;=C2=A0 =C2=A0 than using NPEM/_DSM or led_classdev as suggested.=C2=
=A0 The &quot;attention&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 interface is more beneficial for our site, since it a=
llows us to<br>
&gt;&gt;=C2=A0 =C2=A0 control the NVMe slot LEDs agnostically across differ=
ent enclosure<br>
&gt;&gt;=C2=A0 =C2=A0 vendors and kernel versions using the same scripts.=
=C2=A0 It is also<br>
&gt;&gt;=C2=A0 =C2=A0 nice to use the same /sys/bus/pci/slots/&lt;slot&gt;/=
 sysfs directory for<br>
&gt;&gt;=C2=A0 =C2=A0 both slot LED toggling (&quot;attention&quot;) and sl=
ot power control<br>
&gt;&gt;=C2=A0 =C2=A0 (&quot;power&quot;).<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 Documentation/ABI/testing/sysfs-bus-pci |=C2=A0 21 +<br>
&gt;&gt;=C2=A0 MAINTAINERS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A05 +<br=
>
&gt;&gt;=C2=A0 drivers/pci/hotplug/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 10 +<br>
&gt;&gt;=C2=A0 drivers/pci/hotplug/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 =C2=A03 +<br>
&gt;&gt;=C2=A0 drivers/pci/hotplug/pciehp.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 20 +<br>
&gt;&gt;=C2=A0 drivers/pci/hotplug/pciehp_core.c=C2=A0 =C2=A0 =C2=A0 =C2=A0=
|=C2=A0 20 +-<br>
&gt;&gt;=C2=A0 drivers/pci/hotplug/pciehp_craye1k.c=C2=A0 =C2=A0 | 687 ++++=
++++++++++++++++++++<br>
&gt;&gt;=C2=A0 7 files changed, 765 insertions(+), 1 deletion(-)<br>
&gt;&gt;=C2=A0 create mode 100644 drivers/pci/hotplug/pciehp_craye1k.c<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/Documentation/ABI/testing/sysfs-bus-pci b/Documentati=
on/ABI/testing/sysfs-bus-pci<br>
&gt;&gt; index 92debe879ffb..8536d2ff30d1 100644<br>
&gt;&gt; --- a/Documentation/ABI/testing/sysfs-bus-pci<br>
&gt;&gt; +++ b/Documentation/ABI/testing/sysfs-bus-pci<br>
&gt;&gt; @@ -231,6 +231,27 @@ Description:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - sc=
XX contains the device subclass;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - iX=
X contains the device class programming interface.<br>
&gt;&gt;=C2=A0 <br>
&gt;&gt; +What:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/sys/=
bus/pci/slots/.../attention<br>
&gt;&gt; +Date:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Febru=
ary 2025<br>
&gt;&gt; +Contact:=C2=A0 =C2=A0 <a href=3D"mailto:linux-pci@vger.kernel.org=
" target=3D"_blank">linux-pci@vger.kernel.org</a><br>
&gt;&gt; +Description:<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The attention attribute=
 is used to read or write the attention<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 status for an enclosure=
 slot.=C2=A0 This is often used to set the<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 slot LED value on a NVM=
e storage enclosure.<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Common values:<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =3D OFF<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1 =3D ON<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2 =3D blink<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Using the Cray ClusterS=
tor E1000 extensions:<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =3D fault LED OFF, lo=
cate LED OFF<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1 =3D fault LED ON,=C2=
=A0 locate LED OFF<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2 =3D fault LED OFF, lo=
cate LED ON<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 3 =3D fault LED ON,=C2=
=A0 locate LED ON<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Other values are no-op,=
 OFF, or ON depending on the driver.<br>
&gt;&gt; +<br>
&gt;&gt;=C2=A0 What:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
/sys/bus/pci/slots/.../module<br>
&gt;&gt;=C2=A0 Date:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
June 2009<br>
&gt;&gt;=C2=A0 Contact:=C2=A0 =C2=A0 <a href=3D"mailto:linux-pci@vger.kerne=
l.org" target=3D"_blank">linux-pci@vger.kernel.org</a><br>
&gt;&gt; diff --git a/MAINTAINERS b/MAINTAINERS<br>
&gt;&gt; index 9ac254f4ec41..861576d60a36 100644<br>
&gt;&gt; --- a/MAINTAINERS<br>
&gt;&gt; +++ b/MAINTAINERS<br>
&gt;&gt; @@ -6543,6 +6543,11 @@ S:=C2=A0 =C2=A0 Maintained<br>
&gt;&gt;=C2=A0 F:=C2=A0 Documentation/filesystems/cramfs.rst<br>
&gt;&gt;=C2=A0 F:=C2=A0 fs/cramfs/<br>
&gt;&gt;=C2=A0 <br>
&gt;&gt; +CRAY CLUSTERSTOR E1000 NVME SLOT LED DRIVER EXTENSIONS<br>
&gt;&gt; +M:=C2=A0 Tony Hutter &lt;<a href=3D"mailto:hutter2@llnl.gov" targ=
et=3D"_blank">hutter2@llnl.gov</a>&gt;<br>
&gt;&gt; +S:=C2=A0 Maintained<br>
&gt;&gt; +F:=C2=A0 drivers/pci/hotplug/pciehp_craye1k.c<br>
&gt;&gt; +<br>
&gt;&gt;=C2=A0 CRC LIBRARY<br>
&gt;&gt;=C2=A0 M:=C2=A0 Eric Biggers &lt;<a href=3D"mailto:ebiggers@kernel.=
org" target=3D"_blank">ebiggers@kernel.org</a>&gt;<br>
&gt;&gt;=C2=A0 R:=C2=A0 Ard Biesheuvel &lt;<a href=3D"mailto:ardb@kernel.or=
g" target=3D"_blank">ardb@kernel.org</a>&gt;<br>
&gt;&gt; diff --git a/drivers/pci/hotplug/Kconfig b/drivers/pci/hotplug/Kco=
nfig<br>
&gt;&gt; index 3207860b52e4..3cb84e5e13e9 100644<br>
&gt;&gt; --- a/drivers/pci/hotplug/Kconfig<br>
&gt;&gt; +++ b/drivers/pci/hotplug/Kconfig<br>
&gt;&gt; @@ -183,4 +183,14 @@ config HOTPLUG_PCI_S390<br>
&gt;&gt;=C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 When in doubt, say Y.<br>
&gt;&gt;=C2=A0 <br>
&gt;&gt; +config HOTPLUG_PCI_PCIE_CRAY_E1000<br>
&gt;&gt; +=C2=A0 =C2=A0 bool &quot;PCIe Hotplug extensions for Cray Cluster=
Stor E1000&quot;<br>
&gt;&gt; +=C2=A0 =C2=A0 depends on DMI &amp;&amp; HOTPLUG_PCI_PCIE &amp;&am=
p; IPMI_HANDLER=3Dy<br>
&gt;&gt; +=C2=A0 =C2=A0 help<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 Say Y here if you have a Cray ClusterStor E1=
000 and want to control<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 your NVMe slot LEDs.=C2=A0 Without this driv=
er it is not possible<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 to control the fault and locate LEDs on the =
E1000&#39;s 24 NVMe slots.<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 When in doubt, say N.<br>
&gt;&gt; +<br>
&gt;&gt;=C2=A0 endif # HOTPLUG_PCI<br>
&gt;&gt; diff --git a/drivers/pci/hotplug/Makefile b/drivers/pci/hotplug/Ma=
kefile<br>
&gt;&gt; index 40aaf31fe338..82a1f0592d0a 100644<br>
&gt;&gt; --- a/drivers/pci/hotplug/Makefile<br>
&gt;&gt; +++ b/drivers/pci/hotplug/Makefile<br>
&gt;&gt; @@ -66,6 +66,9 @@ pciehp-objs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 :=3D=C2=A0 =C2=A0 =C2=A0 pciehp_core.o=C2=A0 =C2=A0\<b=
r>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pciehp_ctrl.o=C2=A0 =C2=A0\<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pciehp_pci.o=C2=A0 =C2=A0 \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pciehp_hpc.o<br>
&gt;&gt; +ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000<br>
&gt;&gt; +pciehp-objs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+=3D=C2=A0 =C2=A0 =
=C2=A0 pciehp_craye1k.o<br>
&gt;&gt; +endif<br>
&gt;&gt;=C2=A0 <br>
&gt;&gt;=C2=A0 shpchp-objs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:=3D=C2=A0 =C2=
=A0 =C2=A0 shpchp_core.o=C2=A0 =C2=A0\<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 shpchp_ctrl.o=C2=A0 =C2=A0\<br>
&gt;&gt; diff --git a/drivers/pci/hotplug/pciehp.h b/drivers/pci/hotplug/pc=
iehp.h<br>
&gt;&gt; index debc79b0adfb..3a8173f3e159 100644<br>
&gt;&gt; --- a/drivers/pci/hotplug/pciehp.h<br>
&gt;&gt; +++ b/drivers/pci/hotplug/pciehp.h<br>
&gt;&gt; @@ -199,6 +199,17 @@ int pciehp_get_raw_indicator_status(struct ho=
tplug_slot *h_slot, u8 *status);<br>
&gt;&gt;=C2=A0 <br>
&gt;&gt;=C2=A0 int pciehp_slot_reset(struct pcie_device *dev);<br>
&gt;&gt;=C2=A0 <br>
&gt;&gt; +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000<br>
&gt;&gt; +int craye1k_init(void);<br>
&gt;&gt; +bool is_craye1k_board(void);<br>
&gt;&gt; +int craye1k_get_attention_status(struct hotplug_slot *hotplug_slo=
t, u8 *status);<br>
&gt;&gt; +int craye1k_set_attention_status(struct hotplug_slot *hotplug_slo=
t, u8 status);<br>
&gt;&gt; +#else<br>
&gt;&gt; +#define craye1k_init() (0)<br>
&gt;&gt; +#define craye1k_get_attention_status NULL<br>
&gt;&gt; +#define craye1k_set_attention_status NULL<br>
&gt;&gt; +#endif<br>
&gt;&gt; +<br>
&gt;&gt;=C2=A0 static inline const char *slot_name(struct controller *ctrl)=
<br>
&gt;&gt;=C2=A0 {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 return hotplug_slot_name(&amp;ctrl-&gt;hotplug=
_slot);<br>
&gt;&gt; @@ -209,4 +220,13 @@ static inline struct controller *to_ctrl(stru=
ct hotplug_slot *hotplug_slot)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 return container_of(hotplug_slot, struct contr=
oller, hotplug_slot);<br>
&gt;&gt;=C2=A0 }<br>
&gt;&gt;=C2=A0 <br>
&gt;&gt; +static inline bool is_craye1k_slot(struct controller *ctrl)<br>
&gt;&gt; +{<br>
&gt;&gt; +#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000<br>
&gt;&gt; +=C2=A0 =C2=A0 return (PSN(ctrl) &gt;=3D 1 &amp;&amp; PSN(ctrl) &l=
t;=3D 24 &amp;&amp; is_craye1k_board());<br>
&gt;&gt; +#else<br>
&gt;&gt; +=C2=A0 =C2=A0 return false;<br>
&gt;&gt; +#endif<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt;=C2=A0 #endif=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* _PCIEHP_H */<br>
&gt;&gt; diff --git a/drivers/pci/hotplug/pciehp_core.c b/drivers/pci/hotpl=
ug/pciehp_core.c<br>
&gt;&gt; index f59baa912970..3e8e2b3069bf 100644<br>
&gt;&gt; --- a/drivers/pci/hotplug/pciehp_core.c<br>
&gt;&gt; +++ b/drivers/pci/hotplug/pciehp_core.c<br>
&gt;&gt; @@ -72,6 +72,22 @@ static int init_slot(struct controller *ctrl)<b=
r>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 } else if (ctrl-&gt;pcie-&gt;port-&gt;hotplug_=
user_indicators) {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ops-&gt;get_attent=
ion_status =3D pciehp_get_raw_indicator_status;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ops-&gt;set_attent=
ion_status =3D pciehp_set_raw_indicator_status;<br>
&gt;&gt; +=C2=A0 =C2=A0 } else if (is_craye1k_slot(ctrl)) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* The Cray E1000 =
driver controls slots 1-24.=C2=A0 Initialize the<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* Cray E1000 driv=
er when slot 1 is seen.<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (PSN(ctrl) =3D=3D 1)=
 {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 retval =3D craye1k_init();<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (retval) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ctrl_err(ctrl,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;=
Error loading Cray E1000 extensions&quot;);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kfree(ops);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return retval;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 }<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ops-&gt;get_attention_s=
tatus =3D craye1k_get_attention_status;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ops-&gt;set_attention_s=
tatus =3D craye1k_set_attention_status;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 }<br>
&gt;&gt;=C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 /* register this slot with the hotplug pci cor=
e */<br>
&gt;&gt; @@ -376,8 +392,10 @@ int __init pcie_hp_init(void)<br>
&gt;&gt;=C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 retval =3D pcie_port_service_register(&amp;hpd=
river_portdrv);<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 pr_debug(&quot;pcie_port_service_register =3D =
%d\n&quot;, retval);<br>
&gt;&gt; -=C2=A0 =C2=A0 if (retval)<br>
&gt;&gt; +=C2=A0 =C2=A0 if (retval) {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pr_debug(&quot;Fai=
lure to register service\n&quot;);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return retval;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt;=C2=A0 <br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 return retval;<br>
&gt;&gt;=C2=A0 }<br>
&gt;&gt; diff --git a/drivers/pci/hotplug/pciehp_craye1k.c b/drivers/pci/ho=
tplug/pciehp_craye1k.c<br>
&gt;&gt; new file mode 100644<br>
&gt;&gt; index 000000000000..9c5bee81fdf8<br>
&gt;&gt; --- /dev/null<br>
&gt;&gt; +++ b/drivers/pci/hotplug/pciehp_craye1k.c<br>
&gt;&gt; @@ -0,0 +1,687 @@<br>
&gt;&gt; +// SPDX-License-Identifier: GPL-2.0<br>
&gt;&gt; +/*<br>
&gt;&gt; + * Copyright 2022-2024 Lawrence Livermore National Security, LLC<=
br>
&gt;&gt; + */<br>
&gt;&gt; +/*<br>
&gt;&gt; + * Cray ClusterStor E1000 hotplug slot LED driver extensions<br>
&gt;&gt; + *<br>
&gt;&gt; + * This driver controls the NVMe slot LEDs on the Cray ClusterSto=
re E1000.<br>
&gt;&gt; + * It provides hotplug attention status callbacks for the 24 NVMe=
 slots on<br>
&gt;&gt; + * the E1000.=C2=A0 This allows users to access the E1000&#39;s l=
ocate and fault<br>
&gt;&gt; + * LEDs via the normal /sys/bus/pci/slots/&lt;slot&gt;/attention =
sysfs entries.<br>
&gt;&gt; + * This driver uses IPMI to communicate with the E1000 controller=
 to toggle<br>
&gt;&gt; + * the LEDs.<br>
&gt;&gt; + *<br>
&gt;&gt; + * This driver is based off of ibmpex.c<br>
&gt;&gt; + */<br>
&gt;&gt; +<br>
&gt;&gt; +#include &lt;linux/debugfs.h&gt;<br>
&gt;&gt; +#include &lt;linux/delay.h&gt;<br>
&gt;&gt; +#include &lt;linux/dmi.h&gt;<br>
&gt;&gt; +#include &lt;linux/errno.h&gt;<br>
&gt;&gt; +#include &lt;linux/ipmi.h&gt;<br>
&gt;&gt; +#include &lt;linux/module.h&gt;<br>
&gt;&gt; +#include &lt;linux/pci.h&gt;<br>
&gt;&gt; +#include &lt;linux/pci_hotplug.h&gt;<br>
&gt;&gt; +#include &lt;linux/random.h&gt;<br>
&gt;&gt; +#include &quot;pciehp.h&quot;<br>
&gt;&gt; +<br>
&gt;&gt; +/* Cray E1000 commands */<br>
&gt;&gt; +#define CRAYE1K_CMD_NETFN=C2=A0 =C2=A0 =C2=A0 =C2=A00x3c<br>
&gt;&gt; +#define CRAYE1K_CMD_PRIMARY=C2=A0 =C2=A0 =C2=A00x33<br>
&gt;&gt; +#define CRAYE1K_CMD_FAULT_LED=C2=A0 =C2=A00x39<br>
&gt;&gt; +#define CRAYE1K_CMD_LOCATE_LED=C2=A0 0x22<br>
&gt;&gt; +<br>
&gt;&gt; +/* Subcommands */<br>
&gt;&gt; +#define CRAYE1K_SUBCMD_GET_LED=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0x0<br>
&gt;&gt; +#define CRAYE1K_SUBCMD_SET_LED=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0x1<br>
&gt;&gt; +#define CRAYE1K_SUBCMD_SET_PRIMARY=C2=A0 0x1<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * Milliseconds to wait after get/set LED command.=C2=A0 200ms va=
lue found though<br>
&gt;&gt; + * experimentation<br>
&gt;&gt; + */<br>
&gt;&gt; +#define CRAYE1K_POST_CMD_WAIT_MS=C2=A0 =C2=A0 200<br>
&gt;&gt; +<br>
&gt;&gt; +struct craye1k {<br>
&gt;&gt; +=C2=A0 =C2=A0 struct device *dev;=C2=A0 =C2=A0/* BMC device */<br=
>
&gt;&gt; +=C2=A0 =C2=A0 struct mutex lock;<br>
&gt;&gt; +=C2=A0 =C2=A0 struct completion read_complete;<br>
&gt;&gt; +=C2=A0 =C2=A0 struct ipmi_addr address;<br>
&gt;&gt; +=C2=A0 =C2=A0 struct ipmi_user *user;<br>
&gt;&gt; +=C2=A0 =C2=A0 int iface;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 long tx_msg_id;<br>
&gt;&gt; +=C2=A0 =C2=A0 struct kernel_ipmi_msg tx_msg;<br>
&gt;&gt; +=C2=A0 =C2=A0 unsigned char tx_msg_data[IPMI_MAX_MSG_LENGTH];<br>
&gt;&gt; +=C2=A0 =C2=A0 unsigned char rx_msg_data[IPMI_MAX_MSG_LENGTH];<br>
&gt;&gt; +=C2=A0 =C2=A0 unsigned long rx_msg_len;<br>
&gt;&gt; +=C2=A0 =C2=A0 unsigned char rx_result;=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 /* IPMI completion code */<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* Parent dir for all our debugfs entries */<br>
&gt;&gt; +=C2=A0 =C2=A0 struct dentry *parent;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* debugfs stats */<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 check_primary;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 check_primary_failed;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 was_already_primary;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 was_not_already_primary;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 set_primary;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 set_initial_primary_failed;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 set_primary_failed;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 set_led_locate_failed;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 set_led_fault_failed;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 set_led_readback_failed;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 set_led_failed;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 get_led_failed;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 completion_timeout;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 wrong_msgid;<br>
&gt;&gt; +=C2=A0 =C2=A0 u64 request_failed;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* debugfs configuration options */<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* Print info on spurious IPMI messages */<br>
&gt;&gt; +=C2=A0 =C2=A0 bool print_errors;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* Retries for kernel IPMI layer */<br>
&gt;&gt; +=C2=A0 =C2=A0 u32 ipmi_retries;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* Timeout in ms for IPMI (0 =3D use IPMI default_r=
etry_ms) */<br>
&gt;&gt; +=C2=A0 =C2=A0 u32 ipmi_timeout_ms;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* Timeout in ms to wait for E1000 message completi=
on */<br>
&gt;&gt; +=C2=A0 =C2=A0 u32 completion_timeout_ms;<br>
&gt;&gt; +};<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * Make our craye1k a global so get/set_attention_status() can ac=
cess it.<br>
&gt;&gt; + * This is safe since there&#39;s only one node controller on the=
 board, and so it&#39;s<br>
&gt;&gt; + * impossible to instantiate more than one craye1k.<br>
&gt;&gt; + */<br>
&gt;&gt; +static struct craye1k *craye1k_global;<br>
&gt;&gt; +static DEFINE_MUTEX(craye1k_lock);<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * The E1000 command timeout and retry values were found though e=
xperimentation<br>
&gt;&gt; + * by looking at the error counters.=C2=A0 Keep the counters arou=
nd to troubleshoot<br>
&gt;&gt; + * any issues with our current timeout/retry values.<br>
&gt;&gt; + */<br>
&gt;&gt; +static struct dentry *<br>
&gt;&gt; +craye1k_debugfs_init(struct craye1k *craye1k)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 umode_t mode =3D 0644;<br>
&gt;&gt; +=C2=A0 =C2=A0 struct dentry *parent =3D debugfs_create_dir(&quot;=
pciehp_craye1k&quot;, NULL);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (IS_ERR(parent))<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;check_primary&quot;, mode,=
 parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;check_primary);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;check_primary_failed&quot;=
, mode, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;check_primary_failed);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;was_already_primary&quot;,=
 mode, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;was_already_primary);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;was_not_already_primary&qu=
ot;, mode, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;was_not_already_primary);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;set_primary&quot;, mode, p=
arent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;set_primary);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;set_initial_primary_failed=
&quot;, mode, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;set_initial_primary_failed);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;set_primary_failed&quot;, =
mode, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;set_primary_failed);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;set_led_locate_failed&quot=
;, mode, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;set_led_locate_failed);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;set_led_fault_failed&quot;=
, mode, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;set_led_fault_failed);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;set_led_readback_failed&qu=
ot;, mode, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;set_led_readback_failed);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;set_led_failed&quot;, mode=
, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;set_led_failed);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;get_led_failed&quot;, mode=
, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;get_led_failed);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;completion_timeout&quot;, =
mode, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;completion_timeout);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;wrong_msgid&quot;, mode, p=
arent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;wrong_msgid);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x64(&quot;request_failed&quot;, mode=
, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;request_failed);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x32(&quot;ipmi_retries&quot;, mode, =
parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;ipmi_retries);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x32(&quot;ipmi_timeout_ms&quot;, mod=
e, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;ipmi_timeout_ms);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_x32(&quot;completion_timeout_ms&quot=
;, mode, parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&amp;craye1k-&gt;completion_timeout_ms);<br>
&gt;&gt; +=C2=A0 =C2=A0 debugfs_create_bool(&quot;print_errors&quot;, mode,=
 parent,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &amp;craye1k-&gt;print_errors);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* Return parent dir dentry */<br>
&gt;&gt; +=C2=A0 =C2=A0 return parent;<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * craye1k_msg_handler() - IPMI message response handler<br>
&gt;&gt; + */<br>
&gt;&gt; +static void craye1k_msg_handler(struct ipmi_recv_msg *msg, void *=
user_msg_data)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 struct craye1k *craye1k =3D user_msg_data;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (msg-&gt;msgid !=3D craye1k-&gt;tx_msg_id) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;wrong_msgid=
++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (craye1k-&gt;print_e=
rrors) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 dev_warn_ratelimited(craye1k-&gt;dev,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&quot;rx msgid %ld !=3D %ld&quot;,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0msg-&gt;msgid, craye1k-&gt;tx_msg_id);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ipmi_free_recv_msg(msg)=
;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* Set rx_result to the IPMI completion code */<br>
&gt;&gt; +=C2=A0 =C2=A0 if (msg-&gt;msg.data_len &gt; 0)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;rx_result =
=3D msg-&gt;msg.data[0];<br>
&gt;&gt; +=C2=A0 =C2=A0 else<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;rx_result =
=3D IPMI_UNKNOWN_ERR_COMPLETION_CODE;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (msg-&gt;msg.data_len &gt; 1) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Exclude completion c=
ode from data bytes */<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;rx_msg_len =
=3D msg-&gt;msg.data_len - 1;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memcpy(craye1k-&gt;rx_m=
sg_data, msg-&gt;msg.data + 1,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0craye1k-&gt;rx_msg_len);<br>
&gt;&gt; +=C2=A0 =C2=A0 } else {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;rx_msg_len =
=3D 0;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 ipmi_free_recv_msg(msg);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 complete(&amp;craye1k-&gt;read_complete);<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +static const struct ipmi_user_hndl craye1k_user_hndl =3D {<br>
&gt;&gt; +=C2=A0 =C2=A0 .ipmi_recv_hndl =3D craye1k_msg_handler<br>
&gt;&gt; +};<br>
&gt;&gt; +<br>
&gt;&gt; +static void craye1k_new_smi(int iface, struct device *dev)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 int rc;<br>
&gt;&gt; +=C2=A0 =C2=A0 struct craye1k *craye1k;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k =3D kzalloc(sizeof(*craye1k), GFP_KERNEL);<=
br>
&gt;&gt; +=C2=A0 =C2=A0 if (!craye1k)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;address.addr_type =3D IPMI_SYSTEM_INTER=
FACE_ADDR_TYPE;<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;address.channel =3D IPMI_BMC_CHANNEL;<b=
r>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;iface =3D iface;<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;dev =3D dev;<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;tx_msg.data =3D craye1k-&gt;tx_msg_data=
;<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;ipmi_retries =3D 4;<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;ipmi_timeout_ms =3D 500;<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;completion_timeout_ms =3D 300;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 init_completion(&amp;craye1k-&gt;read_complete);<br=
>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 dev_set_drvdata(dev, craye1k);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 rc =3D ipmi_create_user(craye1k-&gt;iface, &amp;cra=
ye1k_user_hndl, craye1k,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;craye1k-&gt;user);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (rc &lt; 0) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err(dev, &quot;Unab=
le to register IPMI user, iface %d\n&quot;,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 craye1k-&gt;iface);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kfree(craye1k);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_set_drvdata(dev, NU=
LL);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 mutex_lock(&amp;craye1k_lock);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* There&#39;s only one node controller so driver d=
ata should not be set */<br>
&gt;&gt; +=C2=A0 =C2=A0 WARN_ON(craye1k_global);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k_global =3D craye1k;<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;parent =3D craye1k_debugfs_init(craye1k=
);<br>
&gt;&gt; +=C2=A0 =C2=A0 mutex_unlock(&amp;craye1k_lock);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (!craye1k-&gt;parent)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_warn(dev, &quot;Can=
not create debugfs&quot;);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 dev_info(dev, &quot;Cray ClusterStor E1000 slot LED=
s registered&quot;);<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +static void craye1k_smi_gone(int iface)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 pr_warn(&quot;craye1k: Got unexpected smi_gone, ifa=
ce=3D%d&quot;, iface);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 mutex_lock(&amp;craye1k_lock);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (craye1k_global) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debugfs_remove_recursiv=
e(craye1k_global-&gt;parent);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kfree(craye1k_global);<=
br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k_global =3D NULL=
;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +=C2=A0 =C2=A0 mutex_unlock(&amp;craye1k_lock);<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +static struct ipmi_smi_watcher craye1k_smi_watcher =3D {<br>
&gt;&gt; +=C2=A0 =C2=A0 .owner =3D THIS_MODULE,<br>
&gt;&gt; +=C2=A0 =C2=A0 .new_smi =3D craye1k_new_smi,<br>
&gt;&gt; +=C2=A0 =C2=A0 .smi_gone =3D craye1k_smi_gone<br>
&gt;&gt; +};<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * craye1k_send_message() - Send the message already setup in &#3=
9;craye1k&#39;<br>
&gt;&gt; + *<br>
&gt;&gt; + * Context: craye1k_lock is already held.<br>
&gt;&gt; + * Return: 0 on success, non-zero on error.<br>
&gt;&gt; + */<br>
&gt;&gt; +static int craye1k_send_message(struct craye1k *craye1k)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 int rc;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 rc =3D ipmi_validate_addr(&amp;craye1k-&gt;address,=
 sizeof(craye1k-&gt;address));<br>
&gt;&gt; +=C2=A0 =C2=A0 if (rc) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err_ratelimited(cra=
ye1k-&gt;dev, &quot;ipmi_validate_addr() =3D %d\n&quot;,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rc);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;tx_msg_id++;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 rc =3D ipmi_request_settime(craye1k-&gt;user, &amp;=
craye1k-&gt;address,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;tx_msg_id, &amp;craye=
1k-&gt;tx_msg, craye1k,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0, craye1k-&gt;ipmi_retries,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;ipmi_timeout_ms);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (rc) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;request_fai=
led++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 return 0;<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * craye1k_do_message() - Send the message in &#39;craye1k&#39; a=
nd wait for a response<br>
&gt;&gt; + *<br>
&gt;&gt; + * Context: craye1k_lock is already held.<br>
&gt;&gt; + * Return: 0 on success, non-zero on error.<br>
&gt;&gt; + */<br>
&gt;&gt; +static int craye1k_do_message(struct craye1k *craye1k)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 int rc;<br>
&gt;&gt; +=C2=A0 =C2=A0 struct completion *read_complete =3D &amp;craye1k-&=
gt;read_complete;<br>
&gt;&gt; +=C2=A0 =C2=A0 unsigned long tout =3D msecs_to_jiffies(craye1k-&gt=
;completion_timeout_ms);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 WARN_ON(!mutex_is_locked(&amp;craye1k_lock));<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 rc =3D craye1k_send_message(craye1k);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (rc)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 rc =3D wait_for_completion_killable_timeout(read_co=
mplete, tout);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (rc =3D=3D 0) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* timed out */<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;completion_=
timeout++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -ETIME;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 return 0;<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * __craye1k_do_command() - Do an IPMI command<br>
&gt;&gt; + *<br>
&gt;&gt; + * Send a command with optional data bytes, and read back respons=
e bytes.<br>
&gt;&gt; + *<br>
&gt;&gt; + * Context: craye1k_lock is already held.<br>
&gt;&gt; + * Returns: 0 on success, non-zero on error.<br>
&gt;&gt; + */<br>
&gt;&gt; +static int __craye1k_do_command(struct craye1k *craye1k, u8 netfn=
, u8 cmd,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 *send_data, u8 send_data_len, u8 *rec=
v_data,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 recv_data_len)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 int rc;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;tx_msg.netfn =3D netfn;<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;tx_msg.cmd =3D cmd;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (send_data) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memcpy(&amp;craye1k-&gt=
;tx_msg_data[0], send_data, send_data_len);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;tx_msg.data=
_len =3D send_data_len;<br>
&gt;&gt; +=C2=A0 =C2=A0 } else {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;tx_msg_data=
[0] =3D 0;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;tx_msg.data=
_len =3D 0;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 rc =3D craye1k_do_message(craye1k);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (rc =3D=3D 0)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memcpy(recv_data, craye=
1k-&gt;rx_msg_data, recv_data_len);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 return rc;<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * craye1k_do_command() - Do a Cray E1000 specific IPMI command.<=
br>
&gt;&gt; + * @cmd: Cray E1000 specific command<br>
&gt;&gt; + * @send_data:=C2=A0 Data to send after the command<br>
&gt;&gt; + * @send_data_len: Data length<br>
&gt;&gt; + *<br>
&gt;&gt; + * Context: craye1k_lock is already held.<br>
&gt;&gt; + * Returns: the last byte from the response or 0 if response had =
no response<br>
&gt;&gt; + * data bytes, else -1 on error.<br>
&gt;&gt; + */<br>
&gt;&gt; +static int craye1k_do_command(struct craye1k *craye1k, u8 cmd, u8=
 *send_data,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 send_data_len)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 int rc;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 rc =3D __craye1k_do_command(craye1k, CRAYE1K_CMD_NE=
TFN, cmd, send_data,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 send_data_len, NULL, 0);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (rc !=3D 0) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Error attempting com=
mand */<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -1;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (craye1k-&gt;tx_msg.data_len =3D=3D 0)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* Return last received byte value */<br>
&gt;&gt; +=C2=A0 =C2=A0 return craye1k-&gt;rx_msg_data[craye1k-&gt;rx_msg_l=
en - 1];<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * __craye1k_set_primary() - Tell the BMC we want to be the prima=
ry server<br>
&gt;&gt; + *<br>
&gt;&gt; + * An E1000 board has two physical servers on it.=C2=A0 In order =
to set a slot<br>
&gt;&gt; + * NVMe LED, this server needs to first tell the BMC that it&#39;=
s the primary<br>
&gt;&gt; + * server.<br>
&gt;&gt; + *<br>
&gt;&gt; + * Context: craye1k_lock is already held.<br>
&gt;&gt; + * Returns: 0 on success, non-zero on error.<br>
&gt;&gt; + */<br>
&gt;&gt; +static int __craye1k_set_primary(struct craye1k *craye1k)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 u8 bytes[2] =3D {CRAYE1K_SUBCMD_SET_PRIMARY, 1};=C2=
=A0 /* set primary to 1 */<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;set_primary++;<br>
&gt;&gt; +=C2=A0 =C2=A0 return craye1k_do_command(craye1k, CRAYE1K_CMD_PRIM=
ARY, bytes, 2);<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * craye1k_is_primary() - Are we the primary server?<br>
&gt;&gt; + *<br>
&gt;&gt; + * Context: craye1k_lock is already held.<br>
&gt;&gt; + * Returns: true if we are the primary server, false otherwise.<b=
r>
&gt;&gt; + */<br>
&gt;&gt; +static bool craye1k_is_primary(struct craye1k *craye1k)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 u8 byte =3D 0;<br>
&gt;&gt; +=C2=A0 =C2=A0 int rc;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* Response byte is 0x1 on success */<br>
&gt;&gt; +=C2=A0 =C2=A0 rc =3D craye1k_do_command(craye1k, CRAYE1K_CMD_PRIM=
ARY, &amp;byte, 1);<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;check_primary++;<br>
&gt;&gt; +=C2=A0 =C2=A0 if (rc =3D=3D 0x1)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return true;=C2=A0 =C2=
=A0/* success */<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;check_primary_failed++;<br>
&gt;&gt; +=C2=A0 =C2=A0 return false;=C2=A0 =C2=A0/* We are not the primary=
 server node */<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * craye1k_set_primary() - Attempt to set ourselves as the primar=
y server<br>
&gt;&gt; + *<br>
&gt;&gt; + * Context: craye1k_lock is already held.<br>
&gt;&gt; + * Returns: 0 on success, -1 otherwise.<br>
&gt;&gt; + */<br>
&gt;&gt; +static int craye1k_set_primary(struct craye1k *craye1k)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 int tries =3D 10;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (craye1k_is_primary(craye1k)) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;was_already=
_primary++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k-&gt;was_not_already_primary++;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* delay found through experimentation */<br>
&gt;&gt; +=C2=A0 =C2=A0 msleep(300);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (__craye1k_set_primary(craye1k) !=3D 0) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;set_initial=
_primary_failed++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -1;=C2=A0 =C2=A0=
 =C2=A0 /* error */<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /*<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0* It can take 2 to 3 seconds after setting pr=
imary for the controller<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0* to report that it is the primary.<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0*/<br>
&gt;&gt; +=C2=A0 =C2=A0 while (tries--) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 msleep(500);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (craye1k_is_primary(=
craye1k))<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 break;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (tries =3D=3D 0) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;set_primary=
_failed++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -1;=C2=A0 =C2=A0=
 =C2=A0 /* never reported that it&#39;s primary */<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* Wait for primary switch to finish */<br>
&gt;&gt; +=C2=A0 =C2=A0 msleep(1500);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 return 0;<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * craye1k_get_slot_led() - Get slot LED value<br>
&gt;&gt; + * @slot: Slot number (1-24)<br>
&gt;&gt; + * @is_locate_led: 0 =3D get fault LED value, 1 =3D get locate LE=
D value<br>
&gt;&gt; + *<br>
&gt;&gt; + * Context: craye1k_lock is already held.<br>
&gt;&gt; + * Returns: slot value on success, -1 on failure.<br>
&gt;&gt; + */<br>
&gt;&gt; +static int craye1k_get_slot_led(struct craye1k *craye1k, unsigned=
 char slot,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool is_locate_led)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 u8 bytes[2];<br>
&gt;&gt; +=C2=A0 =C2=A0 u8 cmd;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 bytes[0] =3D CRAYE1K_SUBCMD_GET_LED;<br>
&gt;&gt; +=C2=A0 =C2=A0 bytes[1] =3D slot;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 cmd =3D is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CR=
AYE1K_CMD_FAULT_LED;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 return craye1k_do_command(craye1k, cmd, bytes, 2);<=
br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * craye1k_set_slot_led() - Attempt to set the locate/fault LED t=
o a value<br>
&gt;&gt; + * @slot: Slot number (1-24)<br>
&gt;&gt; + * @is_locate_led: 0 =3D use fault LED, 1 =3D use locate LED<br>
&gt;&gt; + * @value: Value to set (0 or 1)<br>
&gt;&gt; + *<br>
&gt;&gt; + * Check the LED value after calling this function to ensure it h=
as been set<br>
&gt;&gt; + * properly.<br>
&gt;&gt; + *<br>
&gt;&gt; + * Context: craye1k_lock is already held.<br>
&gt;&gt; + * Returns: 0 on success, non-zero on failure.<br>
&gt;&gt; + */<br>
&gt;&gt; +static int craye1k_set_slot_led(struct craye1k *craye1k, unsigned=
 char slot,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char is_locate_led,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned char value)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 u8 bytes[3];<br>
&gt;&gt; +=C2=A0 =C2=A0 u8 cmd;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 bytes[0] =3D CRAYE1K_SUBCMD_SET_LED;<br>
&gt;&gt; +=C2=A0 =C2=A0 bytes[1] =3D slot;<br>
&gt;&gt; +=C2=A0 =C2=A0 bytes[2] =3D value;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 cmd =3D is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CR=
AYE1K_CMD_FAULT_LED;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 return craye1k_do_command(craye1k, cmd, bytes, 3);<=
br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +/*<br>
&gt;&gt; + * __craye1k_get_attention_status() - Get LED value<br>
&gt;&gt; + *<br>
&gt;&gt; + * Context: craye1k_lock is already held.<br>
&gt;&gt; + * Returns: 0 on success, -EIO on failure.<br>
&gt;&gt; + */<br>
&gt;&gt; +static int __craye1k_get_attention_status(struct hotplug_slot *ho=
tplug_slot,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 *s=
tatus, bool set_primary)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 unsigned char slot;<br>
&gt;&gt; +=C2=A0 =C2=A0 int locate, fault;<br>
&gt;&gt; +=C2=A0 =C2=A0 struct craye1k *craye1k;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k =3D craye1k_global;<br>
&gt;&gt; +=C2=A0 =C2=A0 slot =3D PSN(to_ctrl(hotplug_slot));<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (set_primary) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (craye1k_set_primary=
(craye1k) !=3D 0) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 craye1k-&gt;get_led_failed++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 return -EIO;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 locate =3D craye1k_get_slot_led(craye1k, slot, true=
);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (locate =3D=3D -1) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;get_led_fai=
led++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EIO;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +=C2=A0 =C2=A0 msleep(CRAYE1K_POST_CMD_WAIT_MS);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 fault =3D craye1k_get_slot_led(craye1k, slot, false=
);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (fault =3D=3D -1) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;get_led_fai=
led++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EIO;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +=C2=A0 =C2=A0 msleep(CRAYE1K_POST_CMD_WAIT_MS);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 *status =3D locate &lt;&lt; 1 | fault;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 return 0;<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +int craye1k_get_attention_status(struct hotplug_slot *hotplug_slo=
t,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 *status)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 int rc;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (mutex_lock_interruptible(&amp;craye1k_lock) !=
=3D 0)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EINTR;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (!craye1k_global) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Driver isn&#39;t ini=
tialized yet */<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_unlock(&amp;craye=
1k_lock);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EOPNOTSUPP;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 rc =3D=C2=A0 __craye1k_get_attention_status(hotplug=
_slot, status, true);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 mutex_unlock(&amp;craye1k_lock);<br>
&gt;&gt; +=C2=A0 =C2=A0 return rc;<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +int craye1k_set_attention_status(struct hotplug_slot *hotplug_slo=
t,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 status)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 unsigned char slot;<br>
&gt;&gt; +=C2=A0 =C2=A0 int tries =3D 4;<br>
&gt;&gt; +=C2=A0 =C2=A0 int rc;<br>
&gt;&gt; +=C2=A0 =C2=A0 u8 new_status;<br>
&gt;&gt; +=C2=A0 =C2=A0 struct craye1k *craye1k;<br>
&gt;&gt; +=C2=A0 =C2=A0 bool locate, fault;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (mutex_lock_interruptible(&amp;craye1k_lock) !=
=3D 0)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EINTR;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 if (!craye1k_global) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Driver isn&#39;t ini=
tialized yet */<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_unlock(&amp;craye=
1k_lock);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EOPNOTSUPP;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 craye1k =3D craye1k_global;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 slot =3D PSN(to_ctrl(hotplug_slot));<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 /* Retry to ensure all LEDs are set */<br>
&gt;&gt; +=C2=A0 =C2=A0 while (tries--) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* The node must f=
irst set itself to be the primary node before<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* setting the slo=
t LEDs (each board has two nodes, or<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* &quot;servers&q=
uot; as they&#39;re called by the manufacturer).=C2=A0 This can<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* lead to content=
ion if both nodes are trying to set the LEDs<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* at the same tim=
e.<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D craye1k_set_prim=
ary(craye1k);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc !=3D 0) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 /* Could not set as primary node.=C2=A0 Just retry again. */<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 continue;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Write value twice to=
 increase success rate */<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 locate =3D (status &amp=
; 0x2) &gt;&gt; 1;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k_set_slot_led(cr=
aye1k, slot, 1, locate);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (craye1k_set_slot_le=
d(craye1k, slot, 1, locate) !=3D 0) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 craye1k-&gt;set_led_locate_failed++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 continue;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* fail, retry */<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 msleep(CRAYE1K_POST_CMD=
_WAIT_MS);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fault =3D status &amp; =
0x1;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k_set_slot_led(cr=
aye1k, slot, 0, fault);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (craye1k_set_slot_le=
d(craye1k, slot, 0, fault) !=3D 0) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 craye1k-&gt;set_led_fault_failed++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 continue;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* fail, retry */<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 msleep(CRAYE1K_POST_CMD=
_WAIT_MS);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D __craye1k_get_at=
tention_status(hotplug_slot, &amp;new_status,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 false);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 msleep(CRAYE1K_POST_CMD=
_WAIT_MS);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc =3D=3D 0 &amp;&a=
mp; new_status =3D=3D status)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 break;=C2=A0 /* success */<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;set_led_rea=
dback_failed++;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* At this point w=
e weren&#39;t successful in setting the LED and<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* need to try aga=
in.<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* Do a random bac=
k-off to reduce contention with other server<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* node in the unl=
ikely case that both server nodes are trying to<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* trying to set a=
 LED at the same time.<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* The 500ms minim=
um in the back-off reduced the chance of this<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* whole retry loo=
p failing from 1 in 700 to none in 10000.<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 msleep(500 + (get_rando=
m_long() % 500));<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +=C2=A0 =C2=A0 mutex_unlock(&amp;craye1k_lock);<br>
&gt;&gt; +=C2=A0 =C2=A0 if (tries =3D=3D 0) {<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 craye1k-&gt;set_led_fai=
led++;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EIO;<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 return 0;<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +bool is_craye1k_board(void)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 return dmi_match(DMI_PRODUCT_NAME, &quot;VSSEP1EC&q=
uot;);<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +int craye1k_init(void)<br>
&gt;&gt; +{<br>
&gt;&gt; +=C2=A0 =C2=A0 return ipmi_smi_watcher_register(&amp;craye1k_smi_w=
atcher);<br>
&gt;&gt; +}<br>
&gt;&gt; +<br>
&gt;&gt; +MODULE_LICENSE(&quot;GPL&quot;);<br>
&gt;&gt; +MODULE_AUTHOR(&quot;Tony Hutter &lt;<a href=3D"mailto:hutter2@lln=
l.gov" target=3D"_blank">hutter2@llnl.gov</a>&gt;&quot;);<br>
&gt;&gt; +MODULE_DESCRIPTION(&quot;Cray E1000 NVMe Slot LED driver&quot;);<=
br>
&gt;&gt; -- <br>
&gt;&gt; 2.43.7<br>
&gt;&gt;<br>
&gt;&gt;<br>
<br>
</blockquote></div></div>

--00000000000025c44a06513d143e--


--===============3564256473696651929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3564256473696651929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============3564256473696651929==--

