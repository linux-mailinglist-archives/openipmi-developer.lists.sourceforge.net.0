Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA2851FFA1
	for <lists+openipmi-developer@lfdr.de>; Mon,  9 May 2022 16:26:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1no4Kt-0004vN-BM; Mon, 09 May 2022 14:26:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1no4Kr-0004vH-06
 for openipmi-developer@lists.sourceforge.net; Mon, 09 May 2022 14:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P7ItdBTC+KXB0aqEwbSMXisX2R2Wb9V+tpF+BUJ3fMQ=; b=Dpcb0LPDSoMGqUuOJgDSTOiZj2
 3tgmQorXoOAm4Fxo/u3wOcD6zSklzyn69QiT03YICk6zz60Rv/YwlP7llLKE4IjX/zq89Y07Qg68Y
 9gKAkMYbIldTonvoJkuyig4kj143DHMlRwXrAV4trSo4NfXgIenaRmAMbE8tHcedUZGA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P7ItdBTC+KXB0aqEwbSMXisX2R2Wb9V+tpF+BUJ3fMQ=; b=INtweEvWpFEXjd1MfMZLpvxriI
 MElv6mIygiH4rHd2xXHRzU//Lok8aTBSdxHyio/96ozkbpz/qdx2nOsC2NI8hUFryeImSZvpXzYmZ
 DYAdxZSbd1Hgpd6l3yNnzletbd7PCjrfwsMksb3/qqrn3ZeaSJRRemv1SQ2ZK6cWvUNU=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1no4Ko-006L4d-F5
 for openipmi-developer@lists.sourceforge.net; Mon, 09 May 2022 14:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
 Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P7ItdBTC+KXB0aqEwbSMXisX2R2Wb9V+tpF+BUJ3fMQ=; b=afqWOj15+1L7ZOehgz4TDp3T9b
 MarVdwm0LTk8+i9B4YSy7xFp7vHwG1/w4WbfDff1U5lUjMxS0vk2DRuV0fJ7wbVLLeaMw89VjYM5x
 WVJwpPzVyva0X5NmUi/i4nuSyMS2YeO8WasLcgi1Y8xImc6fOPpwaaWR9ocIpTn6nZEFaqdopezXx
 OHjXA1hjw9QuPDRbTOoKOwl5vTqszrquVcmDp1xGYYzEdEOTzOi8SiNmSxJjEIE9o/SJMrBbQG4MO
 b+UdR8rUhoog9dM2StftHOG35g7VaJwxTPUyd5VBoTJ128N6lfMi0IgW+WU1FzuWQA7pga9h2J0Nf
 78MmVTaA==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1no4KQ-000BPa-6C; Mon, 09 May 2022 16:25:38 +0200
Message-ID: <260dccd8-a4f6-882c-8767-5bc27576df14@igalia.com>
Date: Mon, 9 May 2022 11:25:06 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: Randy Dunlap <rdunlap@infradead.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com>
 <4fe85e9c-4e96-e9d5-9fd8-f062bafcda4f@infradead.org>
 <7518924e-5bb4-e6e9-0e3e-3f5cb03bf946@igalia.com>
In-Reply-To: <7518924e-5bb4-e6e9-0e3e-3f5cb03bf946@igalia.com>
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 29/04/2022 13:04,
 Guilherme G. Piccoli wrote: > On 27/04/2022
 21:28, Randy Dunlap wrote: >> >> >> On 4/27/22 15:49, Guilherme G. Piccoli
 wrote: >>> + crash_kexec_post_notifiers >>> + This was DEPRE [...] 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1no4Ko-006L4d-F5
Subject: Re: [Openipmi-developer] [PATCH 24/30] panic: Refactor the panic
 path
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com, pmladek@suse.com,
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
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
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

On 29/04/2022 13:04, Guilherme G. Piccoli wrote:
> On 27/04/2022 21:28, Randy Dunlap wrote:
>>
>>
>> On 4/27/22 15:49, Guilherme G. Piccoli wrote:
>>> +	crash_kexec_post_notifiers
>>> +			This was DEPRECATED - users should always prefer the
>>
>> 			This is DEPRECATED - users should always prefer the
>>
>>> +			parameter "panic_notifiers_level" - check its entry
>>> +			in this documentation for details on how it works.
>>> +			Setting this parameter is exactly the same as setting
>>> +			"panic_notifiers_level=4".
>>
> 
> Thanks Randy, for your suggestion - but I confess I couldn't understand
> it properly. It's related to spaces/tabs, right? What you suggest me to
> change in this formatting? Just by looking the email I can't parse.
> 
> Cheers,
> 
> 
> Guilherme

Complete lack of attention from me, apologies!
The suggestions was s/was/is - already fixed for V2, thanks Randy.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
