Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 631A0449D71
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 21:59:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mkBju-0005ur-92; Mon, 08 Nov 2021 20:59:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <stern+618c59fc@netrider.rowland.org>)
 id 1mkBjt-0005uk-2O
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 20:59:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M4a2QhX42ro5DFg7OVx53Z18MObzJp7U5I459Z/HVYg=; b=YRyk1Rs19njcwEZguD17xMXqLr
 N+OKkHqIVrOebyv4BcDVgVn5ZswN5l8xnWTrKL3grjIE4NORdaAxmafI28dQehAd+kXpSf/hjFiNi
 leTvfYFO4mir2yssNMqMwwFZYrkClucmYaUorBCUTLXTGBPDzcNxD06cTU7keAFZFTeU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M4a2QhX42ro5DFg7OVx53Z18MObzJp7U5I459Z/HVYg=; b=AhCmI09pp6yM0NOiwGuV7d3EhE
 LuthXuqap9sUVA4gY7NSbSWbQ87/Q96z+HzQkrRXiROaaPl3MVTYJUOcxanz1uhXU9V1afkhIYyrP
 6pyFgZB/XQ/SXj6F4dIWHNC/uDIWJlVvRZHzn1pPvEXl02s4w558Zid/wJDlAktBfJuc=;
Received: from netrider.rowland.org ([192.131.102.5])
 by sfi-mx-2.v28.lw.sourceforge.com with smtp (Exim 4.92.3)
 id 1mkBjr-0006CP-Iz
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 20:59:36 +0000
Received: (qmail 1679175 invoked by uid 1000); 8 Nov 2021 15:59:26 -0500
Date: Mon, 8 Nov 2021 15:59:26 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Borislav Petkov <bp@alien8.de>
Message-ID: <20211108205926.GA1678880@rowland.harvard.edu>
References: <20211108101157.15189-1-bp@alien8.de>
 <20211108101157.15189-43-bp@alien8.de>
 <CAMuHMdWH+txiSP_d7Jc4f_bU8Lf9iWpT4E3o5o7BJr-YdA6-VA@mail.gmail.com>
 <YYkyUEqcsOwQMb1S@zn.tnic>
 <CAMuHMdXiBEQyEXJagSfpH44hxVA2t0sDH7B7YubLGHrb2MJLLA@mail.gmail.com>
 <YYlJQYLiIrhjwOmT@zn.tnic>
 <CAMuHMdXHikGrmUzuq0WG5JRHUUE=5zsaVCTF+e4TiHpM5tc5kA@mail.gmail.com>
 <YYlOmd0AeA8DSluD@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YYlOmd0AeA8DSluD@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 08, 2021 at 05:21:45PM +0100, Borislav Petkov
 wrote: > On Mon, Nov 08, 2021 at 05:12:16PM +0100, Geert Uytterhoeven wrote:
 > > Returning void is the other extreme ;-) > > > > There are 3 l [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1mkBjr-0006CP-Iz
Subject: Re: [Openipmi-developer] [PATCH v0 42/42] notifier: Return an error
 when callback is already registered
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
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, linux-iio@vger.kernel.org,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, linux-hyperv@vger.kernel.org,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>, Ayush Sawal <ayush.sawal@chelsio.com>,
 sparclinux <sparclinux@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 linux-leds <linux-leds@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, scsi <linux-scsi@vger.kernel.org>,
 Rohit Maheshwari <rohitm@chelsio.com>, linux-staging@lists.linux.dev,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 openipmi-developer@lists.sourceforge.net,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Arnd Bergmann <arnd@arndb.de>, Linux PM list <linux-pm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
 linux-um <linux-um@lists.infradead.org>, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 xen-devel@lists.xenproject.org, linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, intel-gvt-dev@lists.freedesktop.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Parisc List <linux-parisc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Nov 08, 2021 at 05:21:45PM +0100, Borislav Petkov wrote:
> On Mon, Nov 08, 2021 at 05:12:16PM +0100, Geert Uytterhoeven wrote:
> > Returning void is the other extreme ;-)
> > 
> > There are 3 levels (ignoring BUG_ON()/panic () inside the callee):
> >   1. Return void: no one can check success or failure,
> >   2. Return an error code: up to the caller to decide,
> >   3. Return a __must_check error code: every caller must check.
> > 
> > I'm in favor of 2, as there are several places where it cannot fail.
> 
> Makes sense to me. I'll do that in the next iteration.

Is there really any reason for returning an error code?  For example, is 
it anticipated that at some point in the future these registration calls 
might fail?

Currently, the only reason for failing to register a notifier callback 
is because the callback is already registered.  In a sense this isn't 
even an actual failure -- after the registration returns the callback 
_will_ still be registered.

So if the call can never really fail, why bother with a return code?  
Especially since the caller can't do anything with such a code value.

Given the current state of affairs, I vote in favor of 1 (plus a WARN or 
something similar to generate a stack dump in the callee, since double 
registration really is a bug).

Alan Stern


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
