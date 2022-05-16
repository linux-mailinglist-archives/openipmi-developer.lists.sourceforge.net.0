Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D785289D1
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 May 2022 18:09:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqdIB-0001MF-T6; Mon, 16 May 2022 16:09:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nqdIA-0001M9-GI
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZFn50ampduPG9oGRQUX2BMS6rY0kjBJ3j8a67GHebAM=; b=exJVGa6NW6z0pVZVV5+GcyQse3
 GHqEhFL1h//y+w1XO6IYL9iASteYpOQNSFQiuuKSxyS/WNNNj55x6XjZDDdvU2MVyZdgnqlruVTe7
 3QBI0d1Bx3OIzi3B6qUBxs7wxO226d/aSX58u7JJwFNdebdzJAxidCkfdMg4kKllil/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZFn50ampduPG9oGRQUX2BMS6rY0kjBJ3j8a67GHebAM=; b=R/mQ3Jdz11TlXiWkhKFMqophM1
 ZhDEN3XMk6Zj1ttAzL0HsnehCnTnRo2/144WgiEYISpRunZrcMxGbeVhONsVnxmDasOMEwePmdmMV
 tSKUzaMlhllKBJbdqnQbLvSFNLbEB49+/2Ape1kfkKmzdwHl9Uar3q9+HInkjki3FC6Q=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nqdI6-0003r4-I8
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:09:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZFn50ampduPG9oGRQUX2BMS6rY0kjBJ3j8a67GHebAM=; b=FcOPep8ePTWgqhN9kkuewdcNEP
 c+0DcuW1jGVdOvrXyeFbQQqAUYMA09npC4Byr3YGEoB/g2NkzWTt5Pixw+6iQWFOoxmTbFxaaHkCP
 GYMvVe3H+uOm3cet8cNwDTa56BrpIyiq1AnVWz2iVREpdKhDi1ibK7mTGwEsf+7L1BvRA0jP/ip7K
 3Wv2lFsKQ8u4mnZSuMW4kfL4laBmHOrAwA4a8EfUlxz4QT/0au4zO1sGM8rm2FSym85ndF4P4dT3N
 BwBBCS9eObHRceuash+pnFltB0GDgdDLOd7W2xfGhQiSAKVeJrd4klCmODWnoEukEx3MhnUQk8Saq
 p8THRBQA==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nqdHp-006sJN-Dt; Mon, 16 May 2022 18:09:33 +0200
Message-ID: <9f20619a-b405-2dc6-9771-b574b6f5058b@igalia.com>
Date: Mon, 16 May 2022 13:09:04 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-24-gpiccoli@igalia.com>
 <20220510134014.3923ccba@gandalf.local.home>
 <c8818906-f113-82b6-b58b-d47ae0c16b4f@igalia.com> <YoJkpAp8XdS7ROgd@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoJkpAp8XdS7ROgd@alley>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 16/05/2022 11:50, Petr Mladek wrote: > [...] > Shame on
 me that I do not care that much about the style of the commit > message :-)
 > > Anyway, the code looks good to me. With the better commit mes [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nqdI6-0003r4-I8
Subject: Re: [Openipmi-developer] [PATCH 23/30] printk: kmsg_dump: Introduce
 helper to inform number of dumpers
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
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, rcu@vger.kernel.org, bp@alien8.de,
 luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 vkuznets@redhat.com, linux-edac@vger.kernel.org, jgross@suse.com,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 16/05/2022 11:50, Petr Mladek wrote:
> [...]
> Shame on me that I do not care that much about the style of the commit
> message :-)
> 
> Anyway, the code looks good to me. With the better commit message:
> 
> Reviewed-by: Petr Mladek <pmladek@suse.com>
> 

Heheh, cool - I'll add your tag and improve the message in V2.
Thanks,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
