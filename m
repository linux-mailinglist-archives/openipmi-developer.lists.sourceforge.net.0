Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E28A0480851
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Dec 2021 11:17:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n29Xq-0005wv-6l; Tue, 28 Dec 2021 10:17:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1n29Xn-0005wp-Uj
 for openipmi-developer@lists.sourceforge.net; Tue, 28 Dec 2021 10:17:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=USyrHlhnUayu2FiWb0UtOnf6CbNGk+7whrqJXcO7yr8=; b=TsC04JtYyhSP7q7tfqkReWSVnb
 +Kz6EcBy8Nd4vRqUiaNemQXbvUXhq8mH9tTh7jHgB4wm+TuFmNUcsX47UkqEz13xB1D7wq52jxk8G
 HW+7VW12aXMHue/QvjjX3+uGoPdPEVjH9Msz5RDx/ktqnjGMsg0IJzW4CBiog8/cDDaM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=USyrHlhnUayu2FiWb0UtOnf6CbNGk+7whrqJXcO7yr8=; b=HgzLbEcnz0TknMjTj/ovKOOALS
 Ske9+Eh9iUVlJr/awbd4GT0/CRCKzdwm9LX8ICgWc9wy9mtH24Ls7D69csv8gefozCsHZETKFEYN7
 1XIfQjgNDb8PKiCWSB+9eJlwS2kTPWYFXJUTOBjIS56Tio2wNMQhhkpMpmGln5KRL/7Y=;
Received: from mail-ua1-f52.google.com ([209.85.222.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n29Xj-00BgoG-2E
 for openipmi-developer@lists.sourceforge.net; Tue, 28 Dec 2021 10:17:23 +0000
Received: by mail-ua1-f52.google.com with SMTP id az37so10310377uab.12
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 28 Dec 2021 02:17:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=USyrHlhnUayu2FiWb0UtOnf6CbNGk+7whrqJXcO7yr8=;
 b=dalFZwZ1SexLegcI20LLT+/GrEms0Q6rfSUqsyoUPvP7WRYQEmGw1FN5DVPVFEaO9I
 Deo0jrCqaCNs4sKFKFTinDNxWK6uImkJYBEmVIWi6sPPh1iVDbfekXCSCq/oTunu0jsS
 Sy2fAb3FyGKo3Y8XiueyN3K22mnrKo+3E3xve/FGPHO+prbLGA8NioYPAK9USl0vOC1I
 HOiE+8a2IpTkWSfV4hgd7SzFAdmd3uedNhP1f95KLTkv3EKE/4lak2scMmZvSozJySrd
 VWb3hNN/RLZd2/7VIbo0dM+uhNxiT5iK/nkIvcL14M8VHA9TWJxLgF8Fttz4i9++B+gs
 Uazg==
X-Gm-Message-State: AOAM5333SqxSiOKH5QTilSXJAlDhLszNJgo8v4szSJAaec1CtcuBs9yb
 k7lXYktr19NOigjgt2EWl7Te7wNzvHJFLA==
X-Google-Smtp-Source: ABdhPJyWEMPpsynbjU1NcjycZx7SDfk5rO4WfO/+pVVpEgAcyS3oAhsKjQr/Oy9vrm+LFVkLulWYag==
X-Received: by 2002:a67:de8b:: with SMTP id r11mr1628518vsk.80.1640686633107; 
 Tue, 28 Dec 2021 02:17:13 -0800 (PST)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com.
 [209.85.221.176])
 by smtp.gmail.com with ESMTPSA id o188sm3477562vko.48.2021.12.28.02.17.12
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Dec 2021 02:17:12 -0800 (PST)
Received: by mail-vk1-f176.google.com with SMTP id x17so9215855vkx.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 28 Dec 2021 02:17:12 -0800 (PST)
X-Received: by 2002:a1f:9f04:: with SMTP id i4mr6011121vke.33.1640686631832;
 Tue, 28 Dec 2021 02:17:11 -0800 (PST)
MIME-Version: 1.0
References: <20211227164317.4146918-1-schnelle@linux.ibm.com>
 <20211227164317.4146918-6-schnelle@linux.ibm.com>
In-Reply-To: <20211227164317.4146918-6-schnelle@linux.ibm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 28 Dec 2021 11:17:00 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW2qsZZqE_hAchoD7_41ak8btTZb0UZE6DsXDehhT63fg@mail.gmail.com>
Message-ID: <CAMuHMdW2qsZZqE_hAchoD7_41ak8btTZb0UZE6DsXDehhT63fg@mail.gmail.com>
To: Niklas Schnelle <schnelle@linux.ibm.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Niklas, Thanks for your patch! On Mon, Dec 27, 2021 at
 5:51 PM Niklas Schnelle <schnelle@linux.ibm.com> wrote: > In a future patch
 HAS_IOPORT=n will result in inb()/outb() and friends > not being declared.
 We thus need to add this [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.52 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1n29Xj-00BgoG-2E
Subject: Re: [Openipmi-developer] [RFC 05/32] char: impi,
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
Cc: linux-pci <linux-pci@vger.kernel.org>, Guo Ren <guoren@kernel.org>,
 Peter Huewe <peterhuewe@gmx.de>, Vincent Chen <deanbo422@gmail.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Linux-Arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-csky@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Albert Ou <aou@eecs.berkeley.edu>, Corey Minyard <minyard@acm.org>,
 John Garry <john.garry@huawei.com>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Helgaas <bhelgaas@google.com>,
 openipmi-developer@lists.sourceforge.net, Arnd Bergmann <arnd@kernel.org>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jarkko Sakkinen <jarkko@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-integrity <linux-integrity@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Niklas,

Thanks for your patch!

On Mon, Dec 27, 2021 at 5:51 PM Niklas Schnelle <schnelle@linux.ibm.com> wrote:
> In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
> not being declared. We thus need to add this dependency and ifdef
> sections of code using inb()/outb() as alternative access methods.
>
> Co-developed-by: Arnd Bergmann <arnd@kernel.org>
> Signed-off-by: Arnd Bergmann <arnd@kernel.org>
> Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
> ---
>  drivers/char/Kconfig             |  3 ++-

Your oneline-summary doesn't cover this file.

>  drivers/char/ipmi/Makefile       | 11 ++++-------
>  drivers/char/ipmi/ipmi_si_intf.c |  3 ++-
>  drivers/char/ipmi/ipmi_si_pci.c  |  3 +++
>  drivers/char/tpm/Kconfig         |  1 +
>  drivers/char/tpm/tpm_infineon.c  | 14 ++++++++++----
>  drivers/char/tpm/tpm_tis_core.c  | 19 ++++++++-----------
>  7 files changed, 30 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/char/Kconfig b/drivers/char/Kconfig
> index 740811893c57..3d046e364e53 100644
> --- a/drivers/char/Kconfig
> +++ b/drivers/char/Kconfig
> @@ -33,6 +33,7 @@ config TTY_PRINTK_LEVEL
>  config PRINTER
>         tristate "Parallel printer support"
>         depends on PARPORT
> +       depends on HAS_IOPORT

Why? drivers/char/lp.c doesn't use I/O accessors, and should work with
all parport drivers.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
