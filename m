Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C04AB9360
	for <lists+openipmi-developer@lfdr.de>; Fri, 16 May 2025 03:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NZ0D3tgRBNyw0bB7xx7aeNgKmppsOo3c5cpwnc6K7cs=; b=AMcGqZ1k5ASVXPtS3gM6FAecVl
	BJtp2Vcc2zPt8tb05g2KXlFnDRD6B36jQWcSFM8LsuZp2TxLrxO7hg1GIqZpWA1/oZj8xIcGMimRh
	4vASeLk8ubG3I60QJERjNqT0a4JxV9/H5YouG/zQZWOMVNTylsmZvs18G53SNzsCqyy4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uFjQl-000216-8C;
	Fri, 16 May 2025 01:00:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uFjQk-00020q-2o
 for openipmi-developer@lists.sourceforge.net;
 Fri, 16 May 2025 01:00:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6lSVGOCCQRkHI+KN0h6m6NVcznAgAUXi3SggTF2KH/g=; b=EZkcGqjPZf8lOWl2L12vq7hMbT
 37C5mcIf6/4u9/ZPXQqhSDdr5HYAUNLTqL2wD9ZQzaRSUONljX/jdEIzQ4A3I+8fzgunH4UVBnsNt
 40kzLmLkRMWAZRsXRTNGnHLCrzMb3XWDt/Z/3ANzV/wR27L/FONRKg+bifZDal85rVRE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6lSVGOCCQRkHI+KN0h6m6NVcznAgAUXi3SggTF2KH/g=; b=VYII938ImaFYuSdRh9BiO/XzPc
 sR4wfP5t+RZPpEcIHn8vWez5VPw6Y8urcTm1fKDfbnLS6U/HSWrk0g6uQJrXj+chE5tpj7O5C9poz
 7/z/7I+/6ftXSlWFGUDjeAXcrpS93e+aCKV+gPNiYslBKYn6OItsAnkzO6A78lAJG/2c=;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uFjQf-0001uy-HK for openipmi-developer@lists.sourceforge.net;
 Fri, 16 May 2025 01:00:05 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 46e09a7af769-72bc3987a05so1299244a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 15 May 2025 18:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1747357191; x=1747961991;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6lSVGOCCQRkHI+KN0h6m6NVcznAgAUXi3SggTF2KH/g=;
 b=HfjM14Mhk0wQBAsQ2PCklkYKgcoXxE+bEWgdb2/rc00b8D3umX5Sz4SWX9ULAoXrwS
 F9oN8yKm4fqGmrYLKFDLWcUBOJlXze5A0hN6VFi6PjSvzZglzDWZEo0iAzsq47ZkqCM8
 CfwMj2i/BfE31IjtzNSQuevpssv+ZQLQNBqzwYOblOWtqlqcfkTaAwWQ3JcSDQmFJOLc
 pbpmOyhqoPrrAnvz19ceAzaAlzEh5ZUbQKMboyQrcs1StOLPReXszq/0UOqinBR2nAQS
 kTkx0htr2DWs5PHwMkx7ov9a+cejRMz9VFLyHGf/l865hGPfpN6E1xxPgz5lGwncmdCM
 jU7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747357191; x=1747961991;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6lSVGOCCQRkHI+KN0h6m6NVcznAgAUXi3SggTF2KH/g=;
 b=r/HXBwCnrhnw/8wHBuyHTLsWYAzadEurmARcI5kpb4eCymaj3Vbi6uV7CIz9v66mJl
 niKof85ZhbV1gYrNbkC35diLnPHUaeC/SNPs6CVKAazBlWEdwRTqvK9Vrtl009TrhkiM
 BHPgC8LG08mjj8MNfyYQWr3Y3VCgH6i/ClNpxM3yslON7GR+X2MXJLA4SrtPSsFHWbKz
 pHOyRu6vIJn+6+0wBKkbwW6PzK2h4ezm5wV5WJVDCgcLB9FcsnLOKDXIwIIUGzcV7NeQ
 6HH9zCo/ly/G0wA2LWhk5CwYuDLt39x8/qwQx6c+UjMfetuTKxkT0DcameT36AMw2TwT
 xrOA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/zHaEK69PNj0VzkfZQuQqUXzYe/8Ldubo1PFlJpokJakchfE8Vz0fn042TVtFIEGpwrSztX1OGj2tvAhaUXDg8e0=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyhpCPZc0/qJnO+mQhsE33COy45tLmnPj8QIVjCdJJcV5Xz9hVK
 JoBgf+KjAVTHT2Hangav5SW23a16wpQ1+u3AclSDjf5M/RX8LjFTnZo6zc0jPOeeBiU=
X-Gm-Gg: ASbGncultsTG9NZC4NVrf/s4Pq0GaJlvAoAxzzLAxcuSsNfml7cGUcEo0GKDpMha/xV
 vhEm5pXZc4lWWwJtFZM3t3j3WGgT3zxGuN8qbhndsXgRgcPpPkUcXXk9CAg7aZvnMs9/USbpOwp
 FgPFZYnCuL6h+21b//Mu53zdhPKT/q7vFT/7NEck75Y3vpGGK3cm2nd9234EGVma3kFjmvXpFtP
 JzyGKcaQQTgQy+t4uD7Bb/fUCVUpoUJ1no8OuTZ3o0kfWSuygD+Z9zxYkyhDk8Lj6pKzq5B91fD
 oCQk9W4w4qK5hg8idUY92iDyi5nDkDsSu7oa98Xum0jizW6C70S9shs=
X-Google-Smtp-Source: AGHT+IEXrn7R9cmcMwEuGNM6Agx5Q+PXzeVpg0mfgBHl3pli4HpMG0xvmYDc+378blHepXiD82F0lA==
X-Received: by 2002:a05:6830:2a9e:b0:723:7853:8791 with SMTP id
 46e09a7af769-734f6d13facmr898942a34.0.1747357190711; 
 Thu, 15 May 2025 17:59:50 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:d0c5:1ce0:9035:258c])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-734f6a9a7adsm171095a34.30.2025.05.15.17.59.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 May 2025 17:59:50 -0700 (PDT)
Date: Thu, 15 May 2025 19:59:45 -0500
From: Corey Minyard <corey@minyard.net>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Message-ID: <aCaOAVgb8V7_-rLR@mail.minyard.net>
References: <cover.1747276047.git.zhoubinbin@loongson.cn>
 <0963b8274bfe25a21f56da9fcba05830fb43408b.1747276047.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0963b8274bfe25a21f56da9fcba05830fb43408b.1747276047.git.zhoubinbin@loongson.cn>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 15, 2025 at 10:32:25AM +0800, Binbin Zhou wrote:
 > This patch adds Loongson-2K BMC IPMI support. > > According to the existing
 design, we use software simulation to > implement the KCS int [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.50 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uFjQf-0001uy-HK
Subject: Re: [Openipmi-developer] [PATCH v2 2/3] ipmi: Add Loongson-2K BMC
 support
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
Cc: Chong Qiao <qiaochong@loongson.cn>, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>, Binbin Zhou <zhoubb.aaron@gmail.com>,
 Huacai Chen <chenhuacai@kernel.org>, linux-kernel@vger.kernel.org,
 loongarch@lists.linux.dev, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, May 15, 2025 at 10:32:25AM +0800, Binbin Zhou wrote:
> This patch adds Loongson-2K BMC IPMI support.
> 
> According to the existing design, we use software simulation to
> implement the KCS interface registers: Stauts/Command/Data_Out/Data_In.

This is a strange way to do this.  My preference would be to have a
separate driver for this and not put it under the ipmi_si driver.
But it's annoyingly close and it would duplicate a lot of ipmi_si_intf.c
Anyway, I think I'm ok with this basic design.  But there are problems.

> 
> Also since both host side and BMC side read and write kcs status, I use
> fifo pointer to ensure data consistency.

I assume this fifo pointer is part of the interface hardware or the
implementation on the other side of the interface.

> 
> Therefore I made the whole IPMI driver independent.

What do you mean by this statement?

More comments inline.

> 
> Co-developed-by: Chong Qiao <qiaochong@loongson.cn>
> Signed-off-by: Chong Qiao <qiaochong@loongson.cn>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  drivers/char/ipmi/Makefile       |   1 +
>  drivers/char/ipmi/ipmi_si.h      |   7 +
>  drivers/char/ipmi/ipmi_si_intf.c |   3 +
>  drivers/char/ipmi/ipmi_si_ls2k.c | 250 +++++++++++++++++++++++++++++++
>  4 files changed, 261 insertions(+)
>  create mode 100644 drivers/char/ipmi/ipmi_si_ls2k.c
> 
> diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
> index e0944547c9d0..5eb3494f5f39 100644
> --- a/drivers/char/ipmi/Makefile
> +++ b/drivers/char/ipmi/Makefile
> @@ -8,6 +8,7 @@ ipmi_si-y := ipmi_si_intf.o ipmi_kcs_sm.o ipmi_smic_sm.o ipmi_bt_sm.o \
>  	ipmi_si_mem_io.o
>  ipmi_si-$(CONFIG_HAS_IOPORT) += ipmi_si_port_io.o
>  ipmi_si-$(CONFIG_PCI) += ipmi_si_pci.o
> +ipmi_si-$(CONFIG_LOONGARCH) += ipmi_si_ls2k.o

Shouldn't this be dependent on MFD_LS2K_BMC?  It appears you can disable
that and still have CONFIG_LOONGARCH enabled.

And this MFD can have multiple things hanging off of it, wouldn't you
want to make the individual drivers their own CONFIG items?

>  ipmi_si-$(CONFIG_PARISC) += ipmi_si_parisc.o
>  
>  obj-$(CONFIG_IPMI_HANDLER) += ipmi_msghandler.o
> diff --git a/drivers/char/ipmi/ipmi_si.h b/drivers/char/ipmi/ipmi_si.h
> index a7ead2a4c753..71f1d4e1272c 100644
> --- a/drivers/char/ipmi/ipmi_si.h
> +++ b/drivers/char/ipmi/ipmi_si.h
> @@ -93,6 +93,13 @@ void ipmi_si_pci_shutdown(void);
>  static inline void ipmi_si_pci_init(void) { }
>  static inline void ipmi_si_pci_shutdown(void) { }
>  #endif
> +#ifdef CONFIG_LOONGARCH
> +void ipmi_si_ls2k_init(void);
> +void ipmi_si_ls2k_shutdown(void);
> +#else
> +static inline void ipmi_si_ls2k_init(void) { }
> +static inline void ipmi_si_ls2k_shutdown(void) { }
> +#endif

I'm not excited about this, but there is history, I guess.

Same comment as the Makefile on CONFIG_LOONGARCH.

>  #ifdef CONFIG_PARISC
>  void ipmi_si_parisc_init(void);
>  void ipmi_si_parisc_shutdown(void);
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 12b0b77eb1cc..323da77698ea 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -2107,6 +2107,7 @@ static int __init init_ipmi_si(void)
>  
>  	ipmi_si_pci_init();
>  
> +	ipmi_si_ls2k_init();
>  	ipmi_si_parisc_init();
>  
>  	/* We prefer devices with interrupts, but in the case of a machine
> @@ -2288,6 +2289,8 @@ static void cleanup_ipmi_si(void)
>  
>  	ipmi_si_pci_shutdown();
>  
> +	ipmi_si_ls2k_shutdown();
> +
>  	ipmi_si_parisc_shutdown();
>  
>  	ipmi_si_platform_shutdown();
> diff --git a/drivers/char/ipmi/ipmi_si_ls2k.c b/drivers/char/ipmi/ipmi_si_ls2k.c
> new file mode 100644
> index 000000000000..cb31bb989fca
> --- /dev/null
> +++ b/drivers/char/ipmi/ipmi_si_ls2k.c
> @@ -0,0 +1,250 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Loongson-2K BMC IPMI
> + *
> + * Copyright (C) 2024 Loongson Technology Corporation Limited.
> + *
> + * Originally written by Chong Qiao <qiaochong@loongson.cn>
> + * Rewritten for mainline by Binbin Zhou <zhoubinbin@loongson.cn>
> + */
> +
> +#include <linux/ioport.h>
> +#include <linux/module.h>
> +#include <linux/types.h>
> +
> +#include "ipmi_si.h"
> +
> +#define LS2K_KCS_STS_OBF	BIT(0)
> +#define LS2K_KCS_STS_IBF	BIT(1)
> +#define LS2K_KCS_STS_SMS_ATN	BIT(2)
> +#define LS2K_KCS_STS_CMD	BIT(3)
> +
> +#define LS2K_KCS_DATA_MASK	(LS2K_KCS_STS_OBF | LS2K_KCS_STS_IBF | LS2K_KCS_STS_CMD)
> +
> +/* Read and write fifo pointers for data consistency. */
> +struct ls2k_fifo_flag {
> +	u8 ibfh;
> +	u8 ibft;
> +	u8 obfh;
> +	u8 obft;
> +};
> +
> +struct ls2k_kcs_reg {
> +	u8 status;
> +	u8 data_out;
> +	s16 data_in;
> +	s16 cmd;
> +};
> +
> +struct ls2k_kcs_data {
> +	struct ls2k_fifo_flag fifo;
> +	struct ls2k_kcs_reg reg;
> +	u8 cmd_data;
> +	u8 version;
> +	u32 write_req;
> +	u32 write_ack;
> +	u32 reserved[2];
> +};

The above appears to be a memory overlay for registers.  But you aren't
using readb/writeb and associated functions to read/write it.  That is
not the right way to do things.  Please read
Documentation/driver-api/device-io.rst

> +
> +static void ls2k_set_obf(struct ls2k_kcs_data *ik, u8 sts)
> +{
> +	ik->reg.status = (ik->reg.status & ~LS2K_KCS_STS_OBF) | (sts & BIT(0));
> +}
> +
> +static void ls2k_set_ibf(struct ls2k_kcs_data *ik, u8 sts)
> +{
> +	ik->reg.status = (ik->reg.status & ~LS2K_KCS_STS_IBF) | ((sts & BIT(0)) << 1);
> +}
> +
> +static u8 ls2k_get_ibf(struct ls2k_kcs_data *ik)
> +{
> +	return (ik->reg.status >> 1) & BIT(0);
> +}
> +
> +static unsigned char intf_sim_inb_v0(struct ls2k_kcs_data *ik,
> +				     unsigned int offset)
> +{
> +	u32 inb = 0;
> +
> +	switch (offset & BIT(0)) {
> +	case 0:
> +		inb = ik->reg.data_out;
> +		ls2k_set_obf(ik, 0);
> +		break;
> +	case 1:
> +		inb = ik->reg.status;
> +		break;
> +	}
> +
> +	return inb;
> +}
> +
> +static unsigned char intf_sim_inb_v1(struct ls2k_kcs_data *ik,
> +				     unsigned int offset)
> +{
> +	u32 inb = 0;
> +	int cmd;
> +	bool obf, ibf;
> +
> +	obf = ik->fifo.obfh != ik->fifo.obft;
> +	ibf = ik->fifo.ibfh != ik->fifo.ibft;
> +	cmd = ik->cmd_data;
> +
> +	switch (offset & BIT(0)) {
> +	case 0:
> +		inb = ik->reg.data_out;
> +		ik->fifo.obft = ik->fifo.obfh;
> +		break;
> +	case 1:
> +		inb = ik->reg.status & ~LS2K_KCS_DATA_MASK;
> +		inb |= obf | (ibf << 1) | (cmd << 3);
> +		break;
> +	}
> +
> +	return inb;
> +}
> +
> +static unsigned char ls2k_mem_inb(const struct si_sm_io *io,
> +				  unsigned int offset)
> +{
> +	struct ls2k_kcs_data *ik = io->addr;
> +	int inb = 0;
> +
> +	if (ik->version == 0)
> +		inb = intf_sim_inb_v0(ik, offset);
> +	else if (ik->version == 1)
> +		inb = intf_sim_inb_v1(ik, offset);
> +
> +	return inb;
> +}
> +
> +static void intf_sim_outb_v0(struct ls2k_kcs_data *ik, unsigned int offset,
> +			     unsigned char val)
> +{
> +	if (ls2k_get_ibf(ik))
> +		return;
> +
> +	switch (offset & BIT(0)) {
> +	case 0:
> +		ik->reg.data_in = val;
> +		ik->reg.status &= ~LS2K_KCS_STS_CMD;
> +		break;
> +
> +	case 1:
> +		ik->reg.cmd = val;
> +		ik->reg.status |= LS2K_KCS_STS_CMD;
> +		break;
> +	}
> +
> +	ls2k_set_ibf(ik, 1);
> +	ik->write_req++;
> +}
> +
> +static void intf_sim_outb_v1(struct ls2k_kcs_data *ik, unsigned int offset,
> +			     unsigned char val)
> +{
> +	if (ik->fifo.ibfh != ik->fifo.ibft)
> +		return;
> +
> +	switch (offset & BIT(0)) {
> +	case 0:
> +		ik->reg.data_in = val;
> +		ik->cmd_data = 0;
> +		break;
> +
> +	case 1:
> +		ik->reg.cmd = val;
> +		ik->cmd_data = 1;
> +		break;
> +	}
> +
> +	ik->fifo.ibfh = !ik->fifo.ibft;
> +	ik->write_req++;
> +}
> +
> +static void ls2k_mem_outb(const struct si_sm_io *io, unsigned int offset,
> +			  unsigned char val)
> +{
> +	struct ls2k_kcs_data *ik = io->addr;
> +
> +	if (ik->version == 0)
> +		intf_sim_outb_v0(ik, offset, val);
> +	else if (ik->version == 1)
> +		intf_sim_outb_v1(ik, offset, val);
> +}
> +
> +static void ls2k_mem_cleanup(struct si_sm_io *io)
> +{
> +	if (io->addr)
> +		iounmap(io->addr);
> +}
> +
> +static int ipmi_ls2k_sim_setup(struct si_sm_io *io)
> +{
> +	io->addr = ioremap(io->addr_data, io->regspacing);
> +	if (!io->addr)
> +		return -EIO;
> +
> +	io->inputb = ls2k_mem_inb;
> +	io->outputb = ls2k_mem_outb;
> +	io->io_cleanup = ls2k_mem_cleanup;
> +
> +	return 0;
> +}
> +
> +static int ipmi_ls2k_probe(struct platform_device *pdev)
> +{
> +	struct si_sm_io io;
> +
> +	dev_info(&pdev->dev, "probing via ls2k platform");
> +	memset(&io, 0, sizeof(io));
> +
> +	io.addr_source	= SI_PLATFORM;
> +	io.si_type	= SI_KCS;

si_type has been reworked recently, the linux next tree has the changes.
I'll need this modified to work with the linux next changes.

> +	io.addr_space	= IPMI_MEM_ADDR_SPACE;
> +	io.io_setup	= ipmi_ls2k_sim_setup;
> +	io.addr_data	= pdev->resource[0].start;
> +	io.regspacing	= pdev->resource[0].end - pdev->resource[0].start + 1;
> +	io.regsize	= DEFAULT_REGSIZE;
> +	io.regshift	= 0;

The above items, except for io_setup,  don't have much meaning for your
device; there's not much need to set them, and there's no need to
initialize things to zero.  They are for ipmi_si_port and ipmi_si_mem.

> +	io.dev		= &pdev->dev;
> +	io.irq		= 0;
> +	if (io.irq)
> +		io.irq_setup = ipmi_std_irq_setup;

Just remove the irq thing, don't set it to zero and then check it.

> +
> +	dev_info(&pdev->dev, "%pR regsize %d spacing %d irq %d\n",
> +		 &pdev->resource[0], io.regsize, io.regspacing, io.irq);
> +
> +	return ipmi_si_add_smi(&io);
> +}
> +
> +static void ipmi_ls2k_remove(struct platform_device *pdev)
> +{
> +	ipmi_si_remove_by_dev(&pdev->dev);
> +}
> +
> +struct platform_driver ipmi_ls2k_platform_driver = {
> +	.driver = {
> +		.name = "ls2k-ipmi-si",
> +	},
> +	.probe	= ipmi_ls2k_probe,
> +	.remove	= ipmi_ls2k_remove,
> +};
> +
> +static bool platform_registered;
> +void ipmi_si_ls2k_init(void)
> +{
> +	int rv;
> +
> +	rv = platform_driver_register(&ipmi_ls2k_platform_driver);
> +	if (rv)
> +		pr_err("Unable to register driver: %d\n", rv);

That's far to vague to be useful.

> +	else
> +		platform_registered = true;
> +}
> +
> +void ipmi_si_ls2k_shutdown(void)
> +{
> +	if (platform_registered)
> +		platform_driver_unregister(&ipmi_ls2k_platform_driver);
> +}
> -- 
> 2.47.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
