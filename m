Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A095F523E83
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 May 2022 22:12:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nosgj-0008MF-Mb; Wed, 11 May 2022 20:12:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nosgZ-0008Lj-Hd
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 20:11:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CJFn3sQ0AXqP082WliZpvB/FNlzjPtgRZLj1CZSBav8=; b=jmcIqTGUu0BQpOFpEaAZeU4gjB
 rQdzdsb6xZq9fNUnBLLqMNOWAquvBe1lIydGG/yoo2zutnfoO+VMcCPQnP5JsPhjcWTaMbvfH3bPd
 MK9vrt5Z5JiRkoTKeDcqtKJipVm+JLzl4XF1aTK4MhEhWaLxsJMxm81XBLyJLWyoRjFU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CJFn3sQ0AXqP082WliZpvB/FNlzjPtgRZLj1CZSBav8=; b=kHm/ufwxamWwmmGLROJxLmmtIE
 VwqnhHIAaF0U4HoSVpdk0ON9TBauGHicq4ciH5NmDtU3vTDfo4aS15yr8UQYKdeCEfXhi9PCH2yBk
 adfaqLm/MJqjIrfcavsL8vb+x9/zNVi+WRNY+zpqMu1i08nSHNH0sdwMhZArosSYRYUQ=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nosgU-00009u-Kg
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 20:11:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CJFn3sQ0AXqP082WliZpvB/FNlzjPtgRZLj1CZSBav8=; b=H0RwJ9q3twuN5LBJHRtfqxptfc
 +ZBTnXeu+L1QTWv6VeJ074IpruVUqgFdW2irvRDjWrUeZMfUmFqRter3RBPu9sBjZvDxvw8AhX4xB
 NGR1Fc+pyWr1+lwnwPjEPDyZEUU6BxtInHBrU2MsFuhkvRoiyT0qN7DKB5jSGNAhlNUyQGg7oS78I
 1IGokeMYkc2KXY4h6njrMqutcn89GTgmPXm9L8Rca7UD8k1O9WKCSzu2tsWk1It1LXW6uhsh6pzXU
 eq99TNaaB0b0wsrDl7wLGrG68y5q49uL+rS1rPP4MnQKtWlwuuoA5/zs3LiCVa22Xsjm4CNZYglTD
 lORMiUaA==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nosg4-0009ub-Ok; Wed, 11 May 2022 22:11:21 +0200
Message-ID: <37190938-8133-aafa-ea4a-e50f574dd73b@igalia.com>
Date: Wed, 11 May 2022 17:10:06 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-11-gpiccoli@igalia.com>
 <f6def662-5742-b3a8-544f-bf15c636d83d@igalia.com> <YnpzpkfuwzJYbPYj@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YnpzpkfuwzJYbPYj@alley>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/05/2022 11:16, Petr Mladek wrote: > [...] > Yeah, it
 is pretty strange behavior. > > I looked into the history. This notifier
 was added into the alpha code > in 2.4.0-test2pre2. In this historic [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.7 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nosgU-00009u-Kg
Subject: Re: [Openipmi-developer] [PATCH 10/30] alpha: Clean-up the panic
 notifier code
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org, fabiomirmar@gmail.com,
 x86@kernel.org, mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, Matt Turner <mattst88@gmail.com>,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 luto@kernel.org, linux-tegra@vger.kernel.org, rth@gcc.gnu.org,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, tglx@linutronix.de,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 bp@alien8.de, akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/05/2022 11:16, Petr Mladek wrote:
> [...]
> Yeah, it is pretty strange behavior.
> 
> I looked into the history. This notifier was added into the alpha code
> in 2.4.0-test2pre2. In this historic code, the default panic() code
> either rebooted after a timeout or ended in a infinite loop. There
> was not crasdump at that times.
> 
> The notifier allowed to change the behavior. There were 3 notifiers:
> 
>    + mips and mips64 ended with blinking in panic()
>    + alpha did __halt() in this srm case
> 
> They both still do this. I guess that it is some historic behavior
> that people using these architectures are used to.
> 
> Anyway, it makes sense to do this as the last notifier after
> dumping other information.
> 
> Reviewed-by: Petr Mladek <pmladek@suse.com>
> 
> Best Regards,
> Petr

Thanks a bunch for the review - added your tag for V2 =)


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
