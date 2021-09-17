Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 980DB40F918
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Sep 2021 15:27:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mRDtL-00033Z-LW; Fri, 17 Sep 2021 13:26:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <glance@acc.umu.se>) id 1mRDtK-00033T-Ia
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Sep 2021 13:26:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E1MZPG79bywduOp9zN3bAjhhxM2GDH6c1DSLmJeGD30=; b=Az4GYr5u6xDfGBM6z/uLlhV/5R
 qQ3E0ns74F7ZiUQHut5Jjmj6veIY9mZjKD3QAgSFoIchq9L1KT49Y+z9bBjm6psw6MP3wkhl3kJVf
 /CDLkPHc26sFTLiAP6KU8336pecHToufFhMuKtYTmHkifJ9XcX/Qfl0oO3wS8VzL6o+w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E1MZPG79bywduOp9zN3bAjhhxM2GDH6c1DSLmJeGD30=; b=FteGsGDlBq9Fi9eR0fe1Q1MmX2
 VQWituxt20+tFaQuy55zSncqwMG2BxKcbiMGc2zkYl5PgvxakLrs7CIB5/INeOcVwmx1G0GDNpsDh
 gK85VtGenHrU8uM5wZpPAku7H/DlZ3ZuPeni7bWkbClq19I3hk+Qcfp5PS5UrMtHIq0M=;
Received: from mail.acc.umu.se ([130.239.18.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mRDtI-0001V3-0j
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Sep 2021 13:26:58 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by amavisd-new (Postfix) with ESMTP id 587D044B92;
 Fri, 17 Sep 2021 15:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=acc.umu.se; s=mail1;
 t=1631885209; bh=vIBXtYbunMJ2qy2dnJIXaGromudxlF91jRJyR2yXAeQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AXo+a397b8JpATuAsbvVGMvzJNXOf/SDogUq8rMEkBOq0ss+CFEiG1h2p7uQKKMMS
 tmPQP3k+tmuNcNVKhT9hDHkYXkY36dzlw9oz9aEq3lbWxI/Fe7YIkQtPyilMVGT2A0
 DUc7PKalLCl8QjQM5sXZ5G9s7DNDtZinyUE2Psc34Vpgm0tGxB6+KU/Gu708xOOOjK
 IBh4XcIaOO56EZWBBbLIJQtKgvtCdvladkCj5yVciZzX21dvXfTlBhPNYqBIwgg22M
 xJL4Ph9SAWG1PfUC7VMCnlQri82vFV8FmZseprkXr/C1dmQmtiZXvOHAlrVQLlVkuo
 n8uj5NGpLcKMg==
Received: by mail.acc.umu.se (Postfix, from userid 24471)
 id E99CF44B93; Fri, 17 Sep 2021 15:26:48 +0200 (CEST)
Date: Fri, 17 Sep 2021 15:26:48 +0200
From: Anton Lundin <glance@acc.umu.se>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20210917132648.GG108031@montezuma.acc.umu.se>
References: <20210916145300.GD108031@montezuma.acc.umu.se>
 <20210916163945.GY545073@minyard.net>
 <20210917101419.GE108031@montezuma.acc.umu.se>
 <20210917120758.GA545073@minyard.net>
 <20210917125525.GF108031@montezuma.acc.umu.se>
 <20210917131916.GB545073@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917131916.GB545073@minyard.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 17 September, 2021 - Corey Minyard wrote: > On Fri, Sep
 17, 2021 at 02:55:25PM +0200, Anton Lundin wrote: > > On 17 September, 2021
 - Corey Minyard wrote: > > > > > On Fri, Sep 17, 2021 at 12:14:19PM +0200,
 Anton Lundin wrote: > > > > On 16 S [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [130.239.18.156 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [130.239.18.156 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: umu.se]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mRDtI-0001V3-0j
Subject: Re: [Openipmi-developer] Issue with panic handling and ipmi
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
Cc: openipmi-developer@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 17 September, 2021 - Corey Minyard wrote:

> On Fri, Sep 17, 2021 at 02:55:25PM +0200, Anton Lundin wrote:
> > On 17 September, 2021 - Corey Minyard wrote:
> > 
> > > On Fri, Sep 17, 2021 at 12:14:19PM +0200, Anton Lundin wrote:
> > > > On 16 September, 2021 - Corey Minyard wrote:
> > > > 
> > > > > On Thu, Sep 16, 2021 at 04:53:00PM +0200, Anton Lundin wrote:
> > > > > > Hi.
> > > > > > 
> > > > > > I've just done a upgrade of the kernel we're using in a product from
> > > > > > 4.19 to 5.10 and I noted a issue.
> > > > > > 
> > > > > > It started that with that we didn't get panic and oops dumps in our erst
> > > > > > backed pstore, and when debugging that I noted that the reboot on panic
> > > > > > timer didn't work either.
> > > > > > 
> > > > > > I've bisected it down to 2033f6858970 ("ipmi: Free receive messages when
> > > > > > in an oops").
> > > > > 
> > > > > Hmm.  Unfortunately removing that will break other things.  Can you try
> > > > > the following patch?  It's a good idea, in general, to do as little as
> > > > > possible in the panic path, this should cover a multitude of issues.
> > > > > 
> > > > > Thanks for the report.
> > > > > 
> > > > 
> > > > I'm sorry to report that the patch didn't solve the issue, and the
> > > > machine locked up in the panic path as before.
> > > 
> > > I missed something.  Can you try the following?  If this doesn't work,
> > > I'm going to have to figure out how to reproduce this.
> > > 
> > 
> > Sorry, still no joy.
> > 
> > My guess is that there is something locking up due to these Supermicro
> > machines have their ERST memory backed by the BMC, and the same BMC is
> > is the other end of all the ipmi communications.
> > 
> > I've reproduced this on Server/X11SCZ-F and Server/H11SSL-i but I'm
> > guessing it can be reproduced on most, if not all, of their hardware
> > with the same setup.
> > 
> > We're using the ERST backend for pstore, because we're still
> > bios-booting them and don't have efi services available to use as pstore
> > backend.
> > 
> > 
> > I've tested to just yank out the ipmi modules from the kernel and that
> > fixes the panic timer and we get crash dumps to pstore.
> 
> Dang.  I'm going to have to look deeper at what that could change to
> cause an issue like this.  Are you using the IPMI watchdog?  Do you have
> CONFIG_IPMI_PANIC_EVENT=y set in the config?

# CONFIG_IPMI_PANIC_EVENT is not set

We're using the IPMI watchdog.

//Anton


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
