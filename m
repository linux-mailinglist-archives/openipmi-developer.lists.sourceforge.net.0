Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 538404499D9
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 17:30:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mk7X8-0003tM-AS; Mon, 08 Nov 2021 16:30:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <bp@alien8.de>) id 1mk7X6-0003tB-6q
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 16:30:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OSbzA4U/ida8aXvLATS9A1smiSvQH5VirglC+wMEOMM=; b=bmUScVW59icEl05N98ReASWGHr
 i24rIVh8Fgu9777d6y6AH3KVLpXA7mJGuQE+9XKfhi0LQSsrCEvJelQPUCMIxHAKabV00sH+eFUNb
 V+p/z2V8rspW8a1MnKboVDt1Unm44zgDvldQTqKwcaTkzEFN6dmaYcD95A9JoPt/+Dlc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OSbzA4U/ida8aXvLATS9A1smiSvQH5VirglC+wMEOMM=; b=XT5SeoAVvTeyJnnoltb90mgcV5
 DgSS1De4bK/VfSO1C5InhNGmNtRH3P4fy8+swm+rR67Bf5vvcXLyKrqnUBX6MXNOMGdjl8WzKshQx
 EPtDLzwoOYXbZu3CxUpVufr/BCXscw5Rdgk/CZRMYwyv66Y16hKlNDzcQ0p57nyIAKC0=;
Received: from mail.skyhub.de ([5.9.137.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk7X1-006GBu-V0
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 16:30:08 +0000
Received: from zn.tnic (p200300ec2f331100181cb4ce2fe9e1de.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f33:1100:181c:b4ce:2fe9:e1de])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 652D11EC0512;
 Mon,  8 Nov 2021 17:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1636388997;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=OSbzA4U/ida8aXvLATS9A1smiSvQH5VirglC+wMEOMM=;
 b=pBzIQNPgz9f6MnJz8NuSpWeZa+X2KJ2EY1gkFfqIgUOOdk5ooj7nS3SZlOvvPfnLO1w7js
 1rE5oU8U3sZ2kD0zZzsPOjz5Rjy821j5ugVLv+TE7mQzDtZGil7p5QTxNJmqJYfQhl3i/U
 43Oeu8iAMBrtl8n9GGHPMyt/ODoo1Kk=
Date: Mon, 8 Nov 2021 17:29:55 +0100
From: Borislav Petkov <bp@alien8.de>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <YYlQg+OvUpUL630W@zn.tnic>
References: <20211108101157.15189-1-bp@alien8.de>
 <20211108101924.15759-1-bp@alien8.de>
 <20211108141703.GB1666297@rowland.harvard.edu>
 <YYkzJ3+faVga2Tl3@zn.tnic> <YYk1xi3eJdMJdjHC@zn.tnic>
 <20211108112313.73d0727e@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211108112313.73d0727e@gandalf.local.home>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 08, 2021 at 11:23:13AM -0500,
 Steven Rostedt wrote:
 > Question, how often does this warning trigger? Is it common to see in >
 development? Yeah, haven't seen it myself yet. But we hashed it out over
 IRC. :-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mk7X1-006GBu-V0
Subject: Re: [Openipmi-developer] [PATCH v0 00/42] notifiers: Return an
 error when callback is already registered
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
Cc: alsa-devel@alsa-project.org, x86@kernel.org, linux-sh@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-mips@vger.kernel.org,
 netdev@vger.kernel.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 sparclinux@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, Rohit Maheshwari <rohitm@chelsio.com>,
 linux-staging@lists.linux.dev, bcm-kernel-feedback-list@broadcom.com,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
 linux-um@lists.infradead.org, rcu@vger.kernel.org, linux-fbdev@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, intel-gvt-dev@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 linux-parisc@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-renesas-soc@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-alpha@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Nov 08, 2021 at 11:23:13AM -0500, Steven Rostedt wrote:
> Question, how often does this warning trigger? Is it common to see in
> development?

Yeah, haven't seen it myself yet.

But we hashed it out over IRC. :-)

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
