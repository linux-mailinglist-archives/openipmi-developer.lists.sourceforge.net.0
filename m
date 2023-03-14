Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 284AA6B96DC
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Mar 2023 14:53:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pc55D-0002JR-L3;
	Tue, 14 Mar 2023 13:52:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pc55B-0002JL-IP
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 13:52:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dXM+kC2Z9enJZTkFL65kALYvwaM6+hV1n+RHvsknQ4s=; b=ieVoBuOkh/yJe8kJIjKVfZ97Sv
 8L0DexCflGcFaLSXlK/AGL1HhNUa+v02y4ALyFT70tQi8DFNOIVNermI7tEL3ZkxC/FRov/lUWT9X
 tj0EHUOSTQxwtwr4giGkTQBIP/eQeozU4QX9BZKEyWZf7nM/NHAb8XuYINHnMtd2K6rM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dXM+kC2Z9enJZTkFL65kALYvwaM6+hV1n+RHvsknQ4s=; b=mZhcdalB4R61STBaPSupy49sU5
 q7aQ8fBfPAYT8oDp8dWU+ZaRbGDoU80diOm9av2ZvqrWFpX8j4YOo0NUWe7lEU/5Cy7zsablot2/z
 dvXdag8AjoVd13G0ZVCqjA7C/Yflarofa/hUiOiCaulwfQXnGEvPc7wrvl2GaeBLdlIo=;
Received: from mail-oa1-f42.google.com ([209.85.160.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pc557-008QjV-PB for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 13:52:54 +0000
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-17711f56136so17343554fac.12
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 14 Mar 2023 06:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678801964;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dXM+kC2Z9enJZTkFL65kALYvwaM6+hV1n+RHvsknQ4s=;
 b=espBuW7gnXrqbqrbjWyWs9PbqjvuIunipa3wSFPs+RV9o5fILqNlIxP3LdV5gfDuz2
 aDtIxZ6vKj52n75V+tyAuDPd91hqVtyFAZfa7Fku+op/jGeRBLG1HihyL1BRYusrYAXg
 miaHzmu9ESydEe4ARsonu+B8eHHjl1Kp7zuMrV4eknzpt+9s2vIDYZkBrVmvsaT2/3/t
 duFyOhQgM2qR2RieKRx+6jNKl+aW4TQt9CEQ/gNnTpuMmj/uP+YNmGxHwLNT8iXGe1oZ
 va1+Pxrj+X8YT+0JKq+dj8IICu/g9//Hw33vhAaFmmzNBiwqrkKDGrWRVQ/+n1sB67Nq
 g2wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678801964;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=dXM+kC2Z9enJZTkFL65kALYvwaM6+hV1n+RHvsknQ4s=;
 b=RW7l3T8iGwANFhb5blC0jb/p5+8fSp76jzXOEwXk9RDaeQD0EgOOYL8vlXOzmHTvf4
 ZyRs4F5SCZgOObyXQTaZmeAHr7MC+D0VmsebsVILHgNKevVixmPxXe+q5Pl7wge0kd6C
 gonYvBVcDos7H3QuxsZfqBPWn8TRQNXUNlFnCGVqLwQksNVBui1FMSaZ9BDYI4m5/nBb
 DNAXBH/9aruJ1gQLhQppGyzrGagGjLeE/PGoHCg6hsBer6TYcw7rRf0X4W+SEPI0IIuw
 Qks8GMm2/TEdi/6uvoQOztOYxhRvhxRGfJMIJM4APSjza9cbKUvM49kZZzQh6yFyBIS+
 QJeA==
X-Gm-Message-State: AO0yUKX2FRbZc51JKNQBKiVocuCGqA0Bc+XWjPT1HEUXN6knxVA2grLe
 1qiVgNlWrKjlFpIcT6lJFw==
X-Google-Smtp-Source: AK7set8YMt4CBjS/js+B29A+ykr0D7sO5qIzL0imVy6LNA3pswA0gRI/h2SlYpo3C7cqaG2KKtoeNA==
X-Received: by 2002:a05:6870:961d:b0:177:727e:4eae with SMTP id
 d29-20020a056870961d00b00177727e4eaemr8101060oaq.45.1678801963862; 
 Tue, 14 Mar 2023 06:52:43 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 t2-20020a05680800c200b003850d921b90sm1002711oic.1.2023.03.14.06.52.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Mar 2023 06:52:43 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:d290:38d8:4c6f:34f2])
 by serve.minyard.net (Postfix) with ESMTPSA id 54DEF180044;
 Tue, 14 Mar 2023 13:52:41 +0000 (UTC)
Date: Tue, 14 Mar 2023 08:52:40 -0500
From: Corey Minyard <minyard@acm.org>
To: Niklas Schnelle <schnelle@linux.ibm.com>
Message-ID: <ZBB8KCj/9QE7LOgw@minyard.net>
References: <20230314121216.413434-1-schnelle@linux.ibm.com>
 <20230314121216.413434-4-schnelle@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230314121216.413434-4-schnelle@linux.ibm.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 14, 2023 at 01:11:41PM +0100, Niklas Schnelle
 wrote: > In a future patch HAS_IOPORT=n will result in inb()/outb() and
 friends
 > not being declared. We thus need to add this dependency and [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.42 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pc557-008QjV-PB
Subject: Re: [Openipmi-developer] [PATCH v3 03/38] char: impi,
 tpm: depend on HAS_IOPORT
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
Reply-To: minyard@acm.org
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Jarkko Sakkinen <jarkko@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Peter Huewe <peterhuewe@gmx.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 openipmi-developer@lists.sourceforge.net, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Mar 14, 2023 at 01:11:41PM +0100, Niklas Schnelle wrote:
> In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
> not being declared. We thus need to add this dependency and ifdef
> sections of code using inb()/outb() as alternative access methods.

For the IPMI portions, this looks good.

Acked-by: Corey Minyard <cminyard@mvista.com>

Thanks

-corey

> 
> Co-developed-by: Arnd Bergmann <arnd@kernel.org>
> Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
> ---
>  drivers/char/Kconfig             |  3 ++-
>  drivers/char/ipmi/Makefile       | 11 ++++-------
>  drivers/char/ipmi/ipmi_si_intf.c |  3 ++-
>  drivers/char/ipmi/ipmi_si_pci.c  |  3 +++
>  drivers/char/pcmcia/Kconfig      |  8 ++++----
>  drivers/char/tpm/Kconfig         |  1 +
>  drivers/char/tpm/tpm_infineon.c  | 14 ++++++++++----
>  drivers/char/tpm/tpm_tis_core.c  | 19 ++++++++-----------
>  8 files changed, 34 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/char/Kconfig b/drivers/char/Kconfig
> index 30fe9848dac1..c34679c6da70 100644
> --- a/drivers/char/Kconfig
> +++ b/drivers/char/Kconfig
> @@ -34,6 +34,7 @@ config TTY_PRINTK_LEVEL
>  config PRINTER
>  	tristate "Parallel printer support"
>  	depends on PARPORT
> +	depends on HAS_IOPORT
>  	help
>  	  If you intend to attach a printer to the parallel port of your Linux
>  	  box (as opposed to using a serial printer; if the connector at the
> @@ -342,7 +343,7 @@ config NVRAM
>  
>  config DEVPORT
>  	bool "/dev/port character device"
> -	depends on ISA || PCI
> +	depends on HAS_IOPORT
>  	default y
>  	help
>  	  Say Y here if you want to support the /dev/port device. The /dev/port
> diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
> index cb6138b8ded9..e0944547c9d0 100644
> --- a/drivers/char/ipmi/Makefile
> +++ b/drivers/char/ipmi/Makefile
> @@ -5,13 +5,10 @@
>  
>  ipmi_si-y := ipmi_si_intf.o ipmi_kcs_sm.o ipmi_smic_sm.o ipmi_bt_sm.o \
>  	ipmi_si_hotmod.o ipmi_si_hardcode.o ipmi_si_platform.o \
> -	ipmi_si_port_io.o ipmi_si_mem_io.o
> -ifdef CONFIG_PCI
> -ipmi_si-y += ipmi_si_pci.o
> -endif
> -ifdef CONFIG_PARISC
> -ipmi_si-y += ipmi_si_parisc.o
> -endif
> +	ipmi_si_mem_io.o
> +ipmi_si-$(CONFIG_HAS_IOPORT) += ipmi_si_port_io.o
> +ipmi_si-$(CONFIG_PCI) += ipmi_si_pci.o
> +ipmi_si-$(CONFIG_PARISC) += ipmi_si_parisc.o
>  
>  obj-$(CONFIG_IPMI_HANDLER) += ipmi_msghandler.o
>  obj-$(CONFIG_IPMI_DEVICE_INTERFACE) += ipmi_devintf.o
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index abddd7e43a9a..edbbdb804913 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -1882,7 +1882,8 @@ int ipmi_si_add_smi(struct si_sm_io *io)
>  	}
>  
>  	if (!io->io_setup) {
> -		if (io->addr_space == IPMI_IO_ADDR_SPACE) {
> +		if (IS_ENABLED(CONFIG_HAS_IOPORT) &&
> +		    io->addr_space == IPMI_IO_ADDR_SPACE) {
>  			io->io_setup = ipmi_si_port_setup;
>  		} else if (io->addr_space == IPMI_MEM_ADDR_SPACE) {
>  			io->io_setup = ipmi_si_mem_setup;
> diff --git a/drivers/char/ipmi/ipmi_si_pci.c b/drivers/char/ipmi/ipmi_si_pci.c
> index 74fa2055868b..b83d55685b22 100644
> --- a/drivers/char/ipmi/ipmi_si_pci.c
> +++ b/drivers/char/ipmi/ipmi_si_pci.c
> @@ -97,6 +97,9 @@ static int ipmi_pci_probe(struct pci_dev *pdev,
>  	}
>  
>  	if (pci_resource_flags(pdev, 0) & IORESOURCE_IO) {
> +		if (!IS_ENABLED(CONFIG_HAS_IOPORT))
> +			return -ENXIO;
> +
>  		io.addr_space = IPMI_IO_ADDR_SPACE;
>  		io.io_setup = ipmi_si_port_setup;
>  	} else {
> diff --git a/drivers/char/pcmcia/Kconfig b/drivers/char/pcmcia/Kconfig
> index f5d589b2be44..788422627b43 100644
> --- a/drivers/char/pcmcia/Kconfig
> +++ b/drivers/char/pcmcia/Kconfig
> @@ -8,7 +8,7 @@ menu "PCMCIA character devices"
>  
>  config SYNCLINK_CS
>  	tristate "SyncLink PC Card support"
> -	depends on PCMCIA && TTY
> +	depends on PCMCIA && TTY && HAS_IOPORT
>  	help
>  	  Enable support for the SyncLink PC Card serial adapter, running
>  	  asynchronous and HDLC communications up to 512Kbps. The port is
> @@ -21,7 +21,7 @@ config SYNCLINK_CS
>  
>  config CARDMAN_4000
>  	tristate "Omnikey Cardman 4000 support"
> -	depends on PCMCIA
> +	depends on PCMCIA && HAS_IOPORT
>  	select BITREVERSE
>  	help
>  	  Enable support for the Omnikey Cardman 4000 PCMCIA Smartcard
> @@ -33,7 +33,7 @@ config CARDMAN_4000
>  
>  config CARDMAN_4040
>  	tristate "Omnikey CardMan 4040 support"
> -	depends on PCMCIA
> +	depends on PCMCIA && HAS_IOPORT
>  	help
>  	  Enable support for the Omnikey CardMan 4040 PCMCIA Smartcard
>  	  reader.
> @@ -57,7 +57,7 @@ config SCR24X
>  
>  config IPWIRELESS
>  	tristate "IPWireless 3G UMTS PCMCIA card support"
> -	depends on PCMCIA && NETDEVICES && TTY
> +	depends on PCMCIA && NETDEVICES && TTY && HAS_IOPORT
>  	select PPP
>  	help
>  	  This is a driver for 3G UMTS PCMCIA card from IPWireless company. In
> diff --git a/drivers/char/tpm/Kconfig b/drivers/char/tpm/Kconfig
> index 927088b2c3d3..418c9ed59ffd 100644
> --- a/drivers/char/tpm/Kconfig
> +++ b/drivers/char/tpm/Kconfig
> @@ -149,6 +149,7 @@ config TCG_NSC
>  config TCG_ATMEL
>  	tristate "Atmel TPM Interface"
>  	depends on PPC64 || HAS_IOPORT_MAP
> +	depends on HAS_IOPORT
>  	help
>  	  If you have a TPM security chip from Atmel say Yes and it 
>  	  will be accessible from within Linux.  To compile this driver 
> diff --git a/drivers/char/tpm/tpm_infineon.c b/drivers/char/tpm/tpm_infineon.c
> index 9c924a1440a9..2d2ae37153ba 100644
> --- a/drivers/char/tpm/tpm_infineon.c
> +++ b/drivers/char/tpm/tpm_infineon.c
> @@ -51,34 +51,40 @@ static struct tpm_inf_dev tpm_dev;
>  
>  static inline void tpm_data_out(unsigned char data, unsigned char offset)
>  {
> +#ifdef CONFIG_HAS_IOPORT
>  	if (tpm_dev.iotype == TPM_INF_IO_PORT)
>  		outb(data, tpm_dev.data_regs + offset);
>  	else
> +#endif
>  		writeb(data, tpm_dev.mem_base + tpm_dev.data_regs + offset);
>  }
>  
>  static inline unsigned char tpm_data_in(unsigned char offset)
>  {
> +#ifdef CONFIG_HAS_IOPORT
>  	if (tpm_dev.iotype == TPM_INF_IO_PORT)
>  		return inb(tpm_dev.data_regs + offset);
> -	else
> -		return readb(tpm_dev.mem_base + tpm_dev.data_regs + offset);
> +#endif
> +	return readb(tpm_dev.mem_base + tpm_dev.data_regs + offset);
>  }
>  
>  static inline void tpm_config_out(unsigned char data, unsigned char offset)
>  {
> +#ifdef CONFIG_HAS_IOPORT
>  	if (tpm_dev.iotype == TPM_INF_IO_PORT)
>  		outb(data, tpm_dev.config_port + offset);
>  	else
> +#endif
>  		writeb(data, tpm_dev.mem_base + tpm_dev.index_off + offset);
>  }
>  
>  static inline unsigned char tpm_config_in(unsigned char offset)
>  {
> +#ifdef CONFIG_HAS_IOPORT
>  	if (tpm_dev.iotype == TPM_INF_IO_PORT)
>  		return inb(tpm_dev.config_port + offset);
> -	else
> -		return readb(tpm_dev.mem_base + tpm_dev.index_off + offset);
> +#endif
> +	return readb(tpm_dev.mem_base + tpm_dev.index_off + offset);
>  }
>  
>  /* TPM header definitions */
> diff --git a/drivers/char/tpm/tpm_tis_core.c b/drivers/char/tpm/tpm_tis_core.c
> index 3f98e587b3e8..e43d2a1da3ea 100644
> --- a/drivers/char/tpm/tpm_tis_core.c
> +++ b/drivers/char/tpm/tpm_tis_core.c
> @@ -897,11 +897,6 @@ static void tpm_tis_clkrun_enable(struct tpm_chip *chip, bool value)
>  		clkrun_val &= ~LPC_CLKRUN_EN;
>  		iowrite32(clkrun_val, data->ilb_base_addr + LPC_CNTRL_OFFSET);
>  
> -		/*
> -		 * Write any random value on port 0x80 which is on LPC, to make
> -		 * sure LPC clock is running before sending any TPM command.
> -		 */
> -		outb(0xCC, 0x80);
>  	} else {
>  		data->clkrun_enabled--;
>  		if (data->clkrun_enabled)
> @@ -912,13 +907,15 @@ static void tpm_tis_clkrun_enable(struct tpm_chip *chip, bool value)
>  		/* Enable LPC CLKRUN# */
>  		clkrun_val |= LPC_CLKRUN_EN;
>  		iowrite32(clkrun_val, data->ilb_base_addr + LPC_CNTRL_OFFSET);
> -
> -		/*
> -		 * Write any random value on port 0x80 which is on LPC, to make
> -		 * sure LPC clock is running before sending any TPM command.
> -		 */
> -		outb(0xCC, 0x80);
>  	}
> +
> +#ifdef CONFIG_HAS_IOPORT
> +	/*
> +	 * Write any random value on port 0x80 which is on LPC, to make
> +	 * sure LPC clock is running before sending any TPM command.
> +	 */
> +	outb(0xCC, 0x80);
> +#endif
>  }
>  
>  static const struct tpm_class_ops tpm_tis = {
> -- 
> 2.37.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
