Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA326B973C
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Mar 2023 15:06:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pc5I7-0003o0-QH;
	Tue, 14 Mar 2023 14:06:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jarkko@kernel.org>) id 1pc3eP-00010z-Fy
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 12:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=67GwD22s8dUSWNALx0Cux16EDR/Z8N0hu1SWfKX4t1Q=; b=EFYFChjRo6RnNEewMRhRwqP/vu
 yKzKy+EW9KQonhypDjRnQI/sYSDlUzSqqtIbtoZ7ezbiKnwQ2BqKMPSZjZYAasRrfSIBGQ1f/aULn
 P2HV0AJ2axkjVb2N2GEPmVCaUNwfpq2usVr0Wwie1Ttj9LSEau1MVgUL8cdp0ke8IQnQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=67GwD22s8dUSWNALx0Cux16EDR/Z8N0hu1SWfKX4t1Q=; b=RsIvhiywwvj6wqgIDOFq9LupBW
 HHkqoaBuiZz0LWkchtM0l6zF4ARUaFHlbwWi8qO+ZRSK07TdRwkvk7btclXWNN5dt4qbw5xW48V/3
 6L/XjoypVsoLXfv6PHGXR5W+TN6m6rEePuVnaKn83FNcp1jOATI6iHSyExHxzRqJpUhk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pc3eP-008NCf-KD for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 12:21:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5577161766;
 Tue, 14 Mar 2023 12:21:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F17B2C433D2;
 Tue, 14 Mar 2023 12:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1678796461;
 bh=OO0XCrZpTVFyqYcGDB+jvUpcqUr1ezrMMU6aDjj+ZcE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SELptXcUqeILr3pRNuFBHFlNnQEivcUAD05st1KhFEeYecEpWM9lCDeXfkDlC5sIg
 p2G0DXz/NOsoXkjRUdydmAxTuunskqRaapBYXjwfJSXdoBomvU+qJkRRM6qCJ6wNWK
 OM9PHp1iVWT5ayHIiyEe5W04E2itRg60ldtmG1Xu58TZeEnGQi/3ZfezU/NPTDxE3P
 /HaeyiF0dNoTBfvYq0uge2ubBZwxfqQ6fc3SBGRplEXHbSgfCb5DYCeKN5ev8NkGQD
 9qoA+1OULVwRy62YzttoUxqIUAHva2BLx+z2GsChE+l6zZnsth7wT704kFnYHk74um
 tAH6KAudJ2WiQ==
Date: Tue, 14 Mar 2023 14:20:56 +0200
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Niklas Schnelle <schnelle@linux.ibm.com>
Message-ID: <ZBBmqKDh97KexRH9@kernel.org>
References: <20230314121216.413434-1-schnelle@linux.ibm.com>
 <20230314121216.413434-4-schnelle@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230314121216.413434-4-schnelle@linux.ibm.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 14, 2023 at 01:11:41PM +0100, Niklas Schnelle
 wrote: > In a future patch HAS_IOPORT=n will result in inb()/outb() and
 friends
 > not being declared. We thus need to add this dependency and [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pc3eP-008NCf-KD
X-Mailman-Approved-At: Tue, 14 Mar 2023 14:06:14 +0000
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 Corey Minyard <minyard@acm.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
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

Reviewed-by: Jarkko Sakkinen <jarkko@kernel.org>

Who should pick this?

BR, Jarkko


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
