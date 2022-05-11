Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F01523E63
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 May 2022 22:05:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nosaS-0008DX-Pa; Wed, 11 May 2022 20:05:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nosaP-0008DM-JA
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 20:05:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cfPMnwRmX7h9FC5zogrRSwPWC8hDFfBXdcAc10BCDXg=; b=ZYZPVrin6Mu+QMZE2D51csKVap
 X4u8eK3b2RNO2SGqJVMM3K5AKHcO836J1GW49AIc1685WUWh5niaxKStmqApghdqEO4s55IZYdhXX
 XEv/LZSH4Xn84CGi9N3LIPuZT5cnH/Yo7SI0D8fDTi/AXGeWVZeJ7TtrrznlnNukIyVQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cfPMnwRmX7h9FC5zogrRSwPWC8hDFfBXdcAc10BCDXg=; b=cur7VGEOPu6HKSl3UMojrxe5eJ
 GL4yStoB02zsUnS741q0xLioJzY4Ira2c+qYBo+Z9qRoTa3tY4+s0IBp8WR6rw9SmzRQVxgzeAWmW
 vcrmE09hj0JjtCvvxh3SBuIeYROpLWtyc0ur3hoHd8C+v+nVHygDN3He8uQAjRVo7D0I=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nosaK-0094fL-Fy
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 20:05:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cfPMnwRmX7h9FC5zogrRSwPWC8hDFfBXdcAc10BCDXg=; b=PNZaBGeXFsuAaBpHuaMdvRY4/s
 9D5MPz4xTVgTuRGWrB/KEfGG5tVa1JqSC/LT3Rso5sabWhCAduFdYhflwDt6bgTFq6qWGSH0+ncvk
 oTm6f/w8sOzZYRkq+1JkZmdb25beje8r1H2EX6HM4WVyQEo/2Q4CTK9pG4z28p8fSDjazKpN99+TQ
 EpXC0JAykc5ZUnUcVTqfleYx6Z4fPGlU4RkoA5IfJGN2tN+4XLZXjyd3oEcuP2YNdEgKXaQFpZZnR
 Vejz8nGO8jKYtblRG3YNO8+SxkagQsqAK3ZztXb4IgRQ6EnIjofQ7r4kch6g3mJv37QTO/U/Hn9jn
 eVwzVLtQ==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nosZy-0009Kz-VC; Wed, 11 May 2022 22:05:03 +0200
Message-ID: <c8818906-f113-82b6-b58b-d47ae0c16b4f@igalia.com>
Date: Wed, 11 May 2022 17:03:51 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Steven Rostedt <rostedt@goodmis.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-24-gpiccoli@igalia.com>
 <20220510134014.3923ccba@gandalf.local.home>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <20220510134014.3923ccba@gandalf.local.home>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/05/2022 14:40, Steven Rostedt wrote: > On Wed, 27 Apr
 2022 19:49:17 -0300 > "Guilherme G. Piccoli" <gpiccoli@igalia.com> wrote:
 > >> Currently we don't have a way to check if there are dumpers s [...] 
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
X-Headers-End: 1nosaK-0094fL-Fy
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
 linux-xtensa@linux-xtensa.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, pmladek@suse.com,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rcu@vger.kernel.org,
 gregkh@linuxfoundation.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/05/2022 14:40, Steven Rostedt wrote:
> On Wed, 27 Apr 2022 19:49:17 -0300
> "Guilherme G. Piccoli" <gpiccoli@igalia.com> wrote:
> 
>> Currently we don't have a way to check if there are dumpers set,
>> except counting the list members maybe. This patch introduces a very
>> simple helper to provide this information, by just keeping track of
>> registered/unregistered kmsg dumpers. It's going to be used on the
>> panic path in the subsequent patch.
> 
> FYI, it is considered "bad form" to reference in the change log "this
> patch". We know this is a patch. The change log should just talk about what
> is being done. So can you reword your change logs (you do this is almost
> every patch). Here's what I would reword the above to be:
> 
>  Currently we don't have a way to check if there are dumpers set, except
>  perhaps by counting the list members. Introduce a very simple helper to
>  provide this information, by just keeping track of registered/unregistered
>  kmsg dumpers. This will simplify the refactoring of the panic path.

Thanks for the hint, you're right - it's almost in all of my patches.
I'll reword all of them (except the ones already merged) to remove this
"bad form".

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
