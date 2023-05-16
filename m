Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B53704CB2
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 May 2023 13:46:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pyt8V-0005Wk-Ai;
	Tue, 16 May 2023 11:46:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1pyt8T-0005We-EN
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 May 2023 11:46:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qva2ZRnsYYu9631MCqg6dP1jeVmo2pJCLhlxkYIM0hs=; b=R4iHXd+xqjZaf75lRar0bE8Py2
 nTLhJOwi3U7npluTt6khJRxl5FemUoR099nnXHbXKupASRp6UEXy4ur+xl/7O4XR9uyJmpIMGJO/1
 yVjYr5hOYP85gWxAWmfHM/WDQnoQ0nfwauorV7vY44b01C1TvAEpcv5HOiamvmCu+h9A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qva2ZRnsYYu9631MCqg6dP1jeVmo2pJCLhlxkYIM0hs=; b=OZQ4MNw6/tiDesj9UrD/CejP8v
 tjoRll6nuMNNfV427VjlOOYjurUWYoRUb/uG1jmYBH7+Zm1p/kVtae/9YKoN+zPwTWLBQPLXUKN+H
 VRlwMNhVYQ0tU1HnjSFR6xzNz9aM76kjDH9y0kYsUWd4oMpen2yxcjmyUufppu8EOfv4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pyt8O-0002QE-B9 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 May 2023 11:46:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 872D8638BD;
 Tue, 16 May 2023 11:46:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 711C6C4339B;
 Tue, 16 May 2023 11:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1684237580;
 bh=/6URK8ebxKRAr1E5o6SIqB7r+nUmDZOUBzaa5dq3/fw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iGdJ2rYsmqR8oVsZahQCffWW98XsY3ZQUeXnWDOdK/AEAQZPWGakOfz+Feazfr/vl
 zwZZikKODPH3BvcBxPlO97qsEGQqvFknbw/tEto+OjmYA+dy8uQzKCCOKDXOXurVb1
 Cn+gG0WOxgz6wHXyTwJKTcrMiK15YYAZk/wJYeq4=
Date: Tue, 16 May 2023 13:46:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Niklas Schnelle <schnelle@linux.ibm.com>
Message-ID: <2023051656-mammary-cobweb-7265@gregkh>
References: <20230516110038.2413224-1-schnelle@linux.ibm.com>
 <20230516110038.2413224-4-schnelle@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516110038.2413224-4-schnelle@linux.ibm.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, May 16, 2023 at 12:59:59PM +0200, Niklas Schnelle
 wrote: > In a future patch HAS_IOPORT=n will result in inb()/outb() and
 friends
 > not being declared. We thus need to add this dependency and [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pyt8O-0002QE-B9
Subject: Re: [Openipmi-developer] [PATCH v4 03/41] char: impi,
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
 linux-pci@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Jarkko Sakkinen <jarkko@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Corey Minyard <cminyard@mvista.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Peter Huewe <peterhuewe@gmx.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 openipmi-developer@lists.sourceforge.net, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, May 16, 2023 at 12:59:59PM +0200, Niklas Schnelle wrote:
> In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
> not being declared. We thus need to add this dependency and ifdef
> sections of code using inb()/outb() as alternative access methods.
> 
> Co-developed-by: Arnd Bergmann <arnd@kernel.org>
> Signed-off-by: Arnd Bergmann <arnd@kernel.org>
> Acked-by: Corey Minyard <cminyard@mvista.com> # IPMI
> Reviewed-by: Jarkko Sakkinen <jarkko@kernel.org>
> Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
> ---
> Note: The HAS_IOPORT Kconfig option was added in v6.4-rc1 so
>       per-subsystem patches may be applied independently
> 
>  drivers/char/Kconfig             |  3 ++-
>  drivers/char/ipmi/Makefile       | 11 ++++-------
>  drivers/char/ipmi/ipmi_si_intf.c |  3 ++-
>  drivers/char/ipmi/ipmi_si_pci.c  |  3 +++
>  drivers/char/tpm/Kconfig         |  1 +
>  drivers/char/tpm/tpm_infineon.c  | 16 ++++++++++++----
>  drivers/char/tpm/tpm_tis_core.c  | 19 ++++++++-----------
>  7 files changed, 32 insertions(+), 24 deletions(-)

TPM and IPMI patches go through different git trees, so odds are you are
going to have to split this patch in 2.

thanks,

greg k-h


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
