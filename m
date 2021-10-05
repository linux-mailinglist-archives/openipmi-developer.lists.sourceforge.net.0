Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A79F422580
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Oct 2021 13:43:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mXirS-0000Em-OT; Tue, 05 Oct 2021 11:43:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mXirR-0000Ec-V1
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 11:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gEdE0klzvgQxsIJ5Hf+HcoOlaL0XAmAJnEjKCBQ9e/0=; b=k3xfqqJv/khN0KQNVfFbFWaN+c
 pFAZ0L/tpPJg9k8quJEcZO2BLVLqa1m8LEMsLekYEYfvDymDlKJgTv/kRVvRlQhEgIP8Sb+ou8osH
 RMdAmGzz8bY/X+v3njBf6iWshbYZJMgeuaSVFK0yoJCfx7KwYlsg4+xSvpMhYg8UXtHg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gEdE0klzvgQxsIJ5Hf+HcoOlaL0XAmAJnEjKCBQ9e/0=; b=NaDu0tZ5sfE4c95ROpUiA9b8Cx
 8sz4fVTWXcVmSqu7pFh9nadW+Q+2k6YqAIVCzNdQg67e4WBACumbQFfv3OGyaB2AWcnrdXxA9Ld1c
 2uerNJC584+blCPvXlr4qUgbeT+55TbBRSGU0YLRiSZzMbwWV+rYKHVEY+NKDKSO1PFU=;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mXirR-006Vsb-B4
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 11:43:53 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 l16-20020a9d6a90000000b0053b71f7dc83so25448495otq.7
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 05 Oct 2021 04:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=gEdE0klzvgQxsIJ5Hf+HcoOlaL0XAmAJnEjKCBQ9e/0=;
 b=a2GsYDffeyImUGMgFmEG//Nsixk4Ap6rE6897JAAptPD7MT5F77nroysOhj2jjTnse
 tQw999N7Zyl9fzoS7rTVY4C+5hk2TicUQfdVFX5lJhbM022ymsghFrWRobjbiq3ag6yE
 XErLOsg0qaEHApVDMFZGhVyo+k8XMybNQSfAUs/lGf9x/8m4qqJ7C9L2DgDJoK5uucAV
 0UzJphGW7cibdEDPGvYETut9cidFWGx7Xw+yOzt3G8CUQU6w/7v4SaPrsuG0H/DCYtcP
 LbNsUInl7syucKjDbyZWoihvQKpIN3YF7VnjA1RKre/w4IjOChMs3hzN09cAyKLtb9mB
 2pPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=gEdE0klzvgQxsIJ5Hf+HcoOlaL0XAmAJnEjKCBQ9e/0=;
 b=jinAhtapcaG/OAcLn0G5LAmJktA3Gg/BDWj5pEfzpL6OOk8G6uLV33QK63kryRFuCN
 47mBMQHCYqVCGih/lJClGkIHapUCd+VxlCuGmCOa81Q3AKq1q/oPdQQD3shywEB6WolU
 nceKg1AE3Xvcqh+v6BDumNGeFF2uehD96YgpnuQwyyDojZyucxaC5H9BhuEacFG7Hqs9
 gOZfhEk7AO/F6hxg3++lRLHPsf0rFiSoJlkP30eE/0mDqO1Aq27j9X5wPGHVXdxDKSU4
 9Zg8KCTbEDjUFFWQRMHg87izi11aygIplaBlyV/CoU2eFj9/zZTxSG+sTxbd0EpPruF2
 86VQ==
X-Gm-Message-State: AOAM530LS6l9Swh47FrGzr85z1Kn8/OiVcLsQjRYN/BEfnilz13UlIPr
 MwyXSCtP7lSiFpUlze86Jg==
X-Google-Smtp-Source: ABdhPJxa15ezc9zlGo6dbdopkaaVzd3J+Jh7ny1BvLkLvlIqaUu+6+JtyOm9VEC0pAQzkU4l9urjXQ==
X-Received: by 2002:a05:6830:246f:: with SMTP id
 x47mr14055511otr.287.1633434227583; 
 Tue, 05 Oct 2021 04:43:47 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id e64sm2963134otb.14.2021.10.05.04.43.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 04:43:47 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1ce5:3fb4:8fe9:30d1])
 by serve.minyard.net (Postfix) with ESMTPSA id 1C5671800ED;
 Tue,  5 Oct 2021 11:43:46 +0000 (UTC)
Date: Tue, 5 Oct 2021 06:43:44 -0500
From: Corey Minyard <minyard@acm.org>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20211005114344.GC5381@minyard.net>
References: <20211005004019.2670691-1-minyard@acm.org>
 <20211005004019.2670691-4-minyard@acm.org>
 <1d2c2c50-8f79-03ec-5c5c-e1cd8ce07b3d@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d2c2c50-8f79-03ec-5c5c-e1cd8ce07b3d@infradead.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 04, 2021 at 06:27:34PM -0700, Randy Dunlap wrote:
 > Hi, Thanks, all issues addressed. -corey 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.51 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mXirR-006Vsb-B4
Subject: Re: [Openipmi-developer] [PATCH 3/5] ipmi:ipmb: Add initial support
 for IPMI over IPMB
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
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net,
 Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Oct 04, 2021 at 06:27:34PM -0700, Randy Dunlap wrote:
> Hi,

Thanks, all issues addressed.

-corey

> 
> On 10/4/21 5:40 PM, minyard@acm.org wrote:
> > From: Corey Minyard <cminyard@mvista.com>
> > 
> > This provides access to the management controllers on an IPMB bus to a
> > device sitting on the IPMB bus.  It also provides slave capability to
> > respond to received messages on the bus.
> > 
> > Signed-off-by: Corey Minyard <minyard@acm.org>
> > Tested-by: Andrew Manley <andrew.manley@sealingtech.com>
> > Reviewed-by: Andrew Manley <andrew.manley@sealingtech.com>
> > ---
> >   drivers/char/ipmi/Kconfig     |   9 +
> >   drivers/char/ipmi/Makefile    |   1 +
> >   drivers/char/ipmi/ipmi_ipmb.c | 510 ++++++++++++++++++++++++++++++++++
> >   3 files changed, 520 insertions(+)
> >   create mode 100644 drivers/char/ipmi/ipmi_ipmb.c
> > 
> > diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
> > index 249b31197eea..1c92209f023b 100644
> > --- a/drivers/char/ipmi/Kconfig
> > +++ b/drivers/char/ipmi/Kconfig
> > @@ -75,6 +75,15 @@ config IPMI_SSIF
> >   	  have a driver that must be accessed over an I2C bus instead of a
> >   	  standard interface.  This module requires I2C support.
> > +config IPMI_IPMB
> > +       tristate 'IPMI IPMB interface'
> > +       select I2C
> 
> How can this select I2C unconditionally? At this point we don't
> even know if this platform has/supports I2C.
> 
> Ditto for IPMI_SSIF in the current Kconfig file, while
> IPMB_DEVICE_INTERFACE depends on I2C (as it should IMO).
> 
> 
> 
> > +       help
> > +	 Provides a driver for a system running right on the IPMB bus.
> > +	 It supports normal system interface messages to a BMC on the IPMB
> > +	 bus, and it also supports direct messaging on the bus using
> > +	 IPMB direct messages.  This module requires I2C support.
> 
> <form-letter-bot>
> 
> Please follow coding-style for Kconfig files:
> 
> (from Documentation/process/coding-style.rst, section 10):
> 
> For all of the Kconfig* configuration files throughout the source tree,
> the indentation is somewhat different.  Lines under a ``config`` definition
> are indented with one tab, while help text is indented an additional two
> spaces.
> 
> > +
> >   config IPMI_POWERNV
> >   	depends on PPC_POWERNV
> >   	tristate 'POWERNV (OPAL firmware) IPMI interface'
> 
> 
> > diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
> > new file mode 100644
> > index 000000000000..b10a1fd9c563
> > --- /dev/null
> > +++ b/drivers/char/ipmi/ipmi_ipmb.c
> > @@ -0,0 +1,510 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +/*
> > + * Driver to talk to a remote management controller on IPMB.
> > + */
> > +
> 
> [...]
> 
> > +
> > +static int ipmi_ipmb_start_processing(void            *send_info,
> 
> Odd spacing/formatting above.
> 
> > +				      struct ipmi_smi *new_intf)
> > +{
> > +	struct ipmi_ipmb_dev *iidev = send_info;
> > +
> > +	iidev->intf = new_intf;
> > +	iidev->ready = true;
> > +	return 0;
> > +}
> > +
> > +
> > +static void ipmi_ipmb_sender(void                *send_info,
> 
> Ditto.
> 
> > +			     struct ipmi_smi_msg *msg)
> > +{
> 
> 
> -- 
> ~Randy


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
