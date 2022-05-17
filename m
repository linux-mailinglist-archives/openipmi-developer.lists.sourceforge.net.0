Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC4952A294
	for <lists+openipmi-developer@lfdr.de>; Tue, 17 May 2022 15:04:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqwsQ-0006Hf-Qe; Tue, 17 May 2022 13:04:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nqwsP-0006HY-AH
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 13:04:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7k65fdRTQg/wflBs9f0TJRvKoWTammEy4iwKmtzcPs4=; b=JwphrQWQlwv41eSg6yWviuiVog
 J5wXqzK36htCakT79w3A2Ne0aWN5jR+IsfIycbRKa8cYTOEz3LKJ1/8fMTkBDcYeH66jEoAw3pQT9
 Q0dNB7/k5kxpl0sCNoshTAJpyh3wJOAB9WCMtnnpEBEqubkw8NsdGvZv5yFwhjMUy8Bk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7k65fdRTQg/wflBs9f0TJRvKoWTammEy4iwKmtzcPs4=; b=IAMQqg3QEbv06+6FKFP5t2ivTd
 bO9Y7BiY1xJ3d7W4d/Wnv7hfQflVnX1pLX3ZZHVBP9mWq39cLgrHhibHEzyTbPPdOq8scEMqapJpp
 /n5XNdv58nbRwk3o8k61q5udrgtIM5xl21A0sS2Qf/wkC5cNg98POEH3Ssh6h/+bfWRc=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nqwsK-0002Lu-8j
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 13:04:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7k65fdRTQg/wflBs9f0TJRvKoWTammEy4iwKmtzcPs4=; b=OpLRZBE1TUxWd4SJevol7qmbWp
 7cf/63XEfW1McNr9yfxJ/wNA5PzTA6GfEDtrBWeHePG4UP9vT004IKq/Y2n1Wdo9PCU8d40cNtPr7
 evvA1G/GsHzDMrD3kL1RWnjHzehDzDywj5u53TN0tmnpdWb3jYfL8mY4Uh+43rmflK1PctID/9pFc
 ZvUCbSUysCdoW+hfAZNQhZbT4OFisfS/H/quOUTTDHZ+I5zaEEC4729JtousRNxBxXebYRI1Dcqzp
 PvSzoHit05E/cq1DK95qfXV5U60l7efTEeM0sV+06rVod3szWCADFSxvFodt56BQEE6VcTzDLc2Bf
 FOG6Wfyw==;
Received: from 200-161-159-120.dsl.telesp.net.br ([200.161.159.120]
 helo=[192.168.1.60]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nqwrY-008RNM-0M; Tue, 17 May 2022 15:03:44 +0200
Message-ID: <53ceb2c7-f2d7-3b92-4efa-a063487585bc@igalia.com>
Date: Tue, 17 May 2022 10:03:13 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-6-gpiccoli@igalia.com> <YnpXGOXicwdy1E6n@alley>
 <0a20dd06-f459-638e-cb4d-8255ab1a1f23@igalia.com> <YoN/x2fpdDU4+nSB@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoN/x2fpdDU4+nSB@alley>
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 17/05/2022 07:58, Petr Mladek wrote: > [...] >> Thanks
 for the review Petr. Patch was already merged - my goal was to be >> concise, 
 i.e., a patch per driver / module, so the patch kinda fixes >> w [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nqwsK-0002Lu-8j
Subject: Re: [Openipmi-developer] [PATCH 05/30] misc/pvpanic: Convert
 regular spinlock into trylock on panic path
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
 fabiomirmar@gmail.com, x86@kernel.org, zhenwei pi <pizhenwei@bytedance.com>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 Mihai Carabas <mihai.carabas@oracle.com>,
 Shile Zhang <shile.zhang@linux.alibaba.com>, linux-um@lists.infradead.org,
 rostedt@goodmis.org, rcu@vger.kernel.org,
 Wang ShaoBo <bobo.shaobowang@huawei.com>, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 17/05/2022 07:58, Petr Mladek wrote:
> [...]
>> Thanks for the review Petr. Patch was already merged - my goal was to be
>> concise, i.e., a patch per driver / module, so the patch kinda fixes
>> whatever I think is wrong with the driver with regards panic handling.
>>
>> Do you think it worth to remove this patch from Greg's branch just to
>> split it in 2? Personally I think it's not worth, but opinions are welcome.
> 
> No problem. It is not worth the effort.
> 

OK, perfect!

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
