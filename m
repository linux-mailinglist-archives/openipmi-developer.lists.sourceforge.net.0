Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BF6515043
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 18:05:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkT7H-00040W-LA; Fri, 29 Apr 2022 16:05:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nkT7C-00040B-0o
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 16:05:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QQI5zmi1djYWNz2i53I6KuQGatDa49BWqjEk2Pav1i4=; b=ivpNFO0GJSSeKyWSxqppjNNy0N
 5JFGXFQjVfn9GLSnJGvshiXwS6F1YLlrraTeJYweiv0eo4ekAAWHY8hkrd1UJV+zFA+x9xI7phHuL
 3LBJFOwkn9QRMN5gt6S9XCvVTPMpd1W7ODbc8TmMB5z38z73zOp/gGdKFtWqwTZQWKeY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QQI5zmi1djYWNz2i53I6KuQGatDa49BWqjEk2Pav1i4=; b=bBDZYBS6AwKwlm1+QpsFR8ulDD
 KO6yUiHeFxQyq717zP3pM2pA1WR8n/dfEdHi6+yqrwUsF0WvH4xxAsTMm3KZJECO8D+ZCfhwqLhy6
 Dns0VCMvC5SycleYrD+0DKohyHBFYi16jjgrI6DXfIPH/+dtbS1Y7zxMxLHY4vOgq0Ic=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkT75-0002VE-HA
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 16:05:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QQI5zmi1djYWNz2i53I6KuQGatDa49BWqjEk2Pav1i4=; b=dYOwdCYz8mfW6uRaErWUoCqmdx
 5T0+vzZBt6UK85jUK/bYBffPO6pHVBukVXgw40Mng8+hfEFyxsYupbDv17vw0eY73RVtJNUJhZeIk
 wjL2oPNMg0UJQkop2tznLUBtpwTgs2tJTFrh96RXyi3iI9oJ7Xg0HjOO5wFLxxatzCt/a1kjKIm+q
 GG90XSMTUteF9uAfx+0HJjQF0T7y90PJaZRFs3aM6M51tA02d53awi4I7n5GpC6cVQif5RrGFpU1r
 QhiVEfyVqroi50IPYPzYRbjvCqabrqPiHclqX4UZkfFE4tLq7njetpvB7ea+qAjYTdFscbWw6lpa8
 5AxSRVRQ==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nkT6a-0001BR-MS; Fri, 29 Apr 2022 18:04:28 +0200
Message-ID: <7518924e-5bb4-e6e9-0e3e-3f5cb03bf946@igalia.com>
Date: Fri, 29 Apr 2022 13:04:01 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Randy Dunlap <rdunlap@infradead.org>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com>
 <4fe85e9c-4e96-e9d5-9fd8-f062bafcda4f@infradead.org>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <4fe85e9c-4e96-e9d5-9fd8-f062bafcda4f@infradead.org>
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 27/04/2022 21:28, Randy Dunlap wrote: > > > On 4/27/22
 15:49, Guilherme G. Piccoli wrote: >> + crash_kexec_post_notifiers >> + This
 was DEPRECATED - users should always prefer the > > This is DEPRE [...] 
 Content analysis details:   (-3.1 points, 6.0 required)
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
X-Headers-End: 1nkT75-0002VE-HA
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, coresight@lists.linaro.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 27/04/2022 21:28, Randy Dunlap wrote:
> 
> 
> On 4/27/22 15:49, Guilherme G. Piccoli wrote:
>> +	crash_kexec_post_notifiers
>> +			This was DEPRECATED - users should always prefer the
> 
> 			This is DEPRECATED - users should always prefer the
> 
>> +			parameter "panic_notifiers_level" - check its entry
>> +			in this documentation for details on how it works.
>> +			Setting this parameter is exactly the same as setting
>> +			"panic_notifiers_level=4".
> 

Thanks Randy, for your suggestion - but I confess I couldn't understand
it properly. It's related to spaces/tabs, right? What you suggest me to
change in this formatting? Just by looking the email I can't parse.

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
