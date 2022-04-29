Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CF1514F27
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 17:20:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkSPf-00025Q-Tn; Fri, 29 Apr 2022 15:20:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nkSPc-00025J-9t
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 15:20:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PkGMRtr7ZOpuAUYdkK5YcnBWQgNByIkM+TF/PhPSt00=; b=OA0GLTyTN1Q02Bihowori76UHi
 V3aVzxJLYqIKZMVYRBzQBfOHG+fvFcC7fdf3758nEZfU3Dn0NgWvi8aYvDP5Ys2ZCYFdSbf0/ahqu
 weUx1FsajBj9bCOnPt2P/cvlieOVk63XDl+hMW4GdX8h979P99GATBX7+Oyoxtc7u7kg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PkGMRtr7ZOpuAUYdkK5YcnBWQgNByIkM+TF/PhPSt00=; b=P0zagkHCwgy84Di90qVvxGj3Qf
 Cu7JzJSfRLLdrLFar37XWQKNtP8bdJFG9YWrK3Viv3dQjiOal7g1GEtwvcb3QFiJhZAfO6Lkojf7X
 n/cexu8pCZP3yMLHdAoITXwKSNfVJaXthzsh/IjoCKfDd3bIDQZFjPkMRDXXm4D3cyt0=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkSPZ-0008NW-2m
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 15:20:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PkGMRtr7ZOpuAUYdkK5YcnBWQgNByIkM+TF/PhPSt00=; b=McsgIEmWszU/NtZ864aphbd05/
 AA+Hs7uyIJtJtMr4867fKRnrcDZ/B0ve7meILjRDqPYrpj2SCcZq87R4becMzN/EmmpSkGxa2bXfq
 pUhMsFJRA7hiMl/hulL8uwaQ3NgTviAzyrP9F3cuPytnlSXUcQgJY1SVDx/EfT4PyEI3blubrtgBl
 Y/qFy6eJFuUH765RC4uiwWYgWdDuIIe2xttNarhTtSLeO0f5vFGPmxPe8sb1rSPH9MLQ8MhCgLKVk
 8Yh9XWbluokYf/vW7/yQXLp3HdC2BoK3CBL6+DlGPNeddie6sMCK3FiVbeA/PpCZCA2PeX8k9qatt
 P0Tqe4Tg==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nkSOj-000BaQ-FP; Fri, 29 Apr 2022 17:19:09 +0200
Message-ID: <31248811-d3ed-63dd-e255-c3be07fb1434@igalia.com>
Date: Fri, 29 Apr 2022 12:18:29 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: minyard@acm.org, elder@ieee.org, Alex Elder <elder@kernel.org>,
 cminyard@mvista.com
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-22-gpiccoli@igalia.com>
 <20220428162616.GE442787@minyard.net>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <20220428162616.GE442787@minyard.net>
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 28/04/2022 13:26, Corey Minyard wrote: > [...] > > For
 the IPMI portion: > > Acked-by: Corey Minyard <cminyard@mvista.com> Thanks
 Alex and Corey for the ACKs! > > Note that the IPMI panic_event() should
 always return, but it may take > some time, especially if the IPMI controller
 is no longer functional. > So the risk of a long delay is there and it makes
 s [...] Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nkSPZ-0008NW-2m
Subject: Re: [Openipmi-developer] [PATCH 21/30] panic: Introduce the panic
 pre-reboot notifier list
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Pavel Machek <pavel@ucw.cz>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, stern@rowland.harvard.edu,
 xen-devel@lists.xenproject.org, Matt Turner <mattst88@gmail.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>, pmladek@suse.com,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, luto@kernel.org,
 tglx@linutronix.de, Richard Henderson <rth@twiddle.net>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sven Schnelle <svens@linux.ibm.com>, akpm@linux-foundation.org,
 linux-hyperv@vger.kernel.org, dave.hansen@linux.intel.com,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, linux-s390@vger.kernel.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Helge Deller <deller@gmx.de>, vgoyal@redhat.com, mhiramat@kernel.org,
 linux-xtensa@linux-xtensa.org, john.ogness@linutronix.de,
 hidehiro.kawai.ez@hitachi.com, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Chris Zankel <chris@zankel.net>, Tony Luck <tony.luck@intel.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 James Morse <james.morse@arm.com>, kernel-dev@igalia.com,
 fabiomirmar@gmail.com, halves@canonical.com, alejandro.j.jimenez@oracle.com,
 feng.tang@intel.com, will@kernel.org, bhe@redhat.com, corbet@lwn.net,
 Dexuan Cui <decui@microsoft.com>, bcm-kernel-feedback-list@broadcom.com,
 keescook@chromium.org, arnd@arndb.de, Haiyang Zhang <haiyangz@microsoft.com>,
 rostedt@goodmis.org, rcu@vger.kernel.org, bp@alien8.de,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-parisc@vger.kernel.org,
 linux-alpha@vger.kernel.org, peterz@infradead.org,
 linux-remoteproc@vger.kernel.org, mikelley@microsoft.com,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-leds@vger.kernel.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org, mingo@redhat.com,
 dyoung@redhat.com, paulmck@kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 linux-tegra@vger.kernel.org, andriy.shevchenko@linux.intel.com,
 Johannes Berg <johannes@sipsolutions.net>, linux-edac@vger.kernel.org,
 jgross@suse.com, netdev@vger.kernel.org, kernel@gpiccoli.net,
 kexec@lists.infradead.org, linux-mips@vger.kernel.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 28/04/2022 13:26, Corey Minyard wrote:
> [...]
> 
> For the IPMI portion:
> 
> Acked-by: Corey Minyard <cminyard@mvista.com>

Thanks Alex and Corey for the ACKs!

> 
> Note that the IPMI panic_event() should always return, but it may take
> some time, especially if the IPMI controller is no longer functional.
> So the risk of a long delay is there and it makes sense to move it very
> late.
> 

Thanks, I agree - the patch moves it to the (latest - 1) position, since
some arch code might run as the latest and effectively stops the machine.
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
