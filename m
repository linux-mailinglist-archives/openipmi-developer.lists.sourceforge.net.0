Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC658523E38
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 May 2022 22:01:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nosW3-0002YO-W1; Wed, 11 May 2022 20:00:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nosW2-0002YH-Tz
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 20:00:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gDHQr/46Ll+YF5RXidB7bzodWcAOTgjTzZrI+em3L64=; b=gf+kW8btYJNVB6oCXy/w0HrLVv
 kuBu71R0DbrmTXzAFvnNGz3xQRck8c4EmbeajuK4VNLjGNIMdK1Ci7vJQAPX8iZNkBN0QDZQupXsh
 M2YIoR8CTd2vvechbKezYfIjbgaAOtRPZgeSNwVt4QlKqY7W86qLZZqppU2MWj8f4qxY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gDHQr/46Ll+YF5RXidB7bzodWcAOTgjTzZrI+em3L64=; b=bNWWgRKKI+NStjmvCZpMSWc9tQ
 NHNVo6CkVZpxv0fB4s/YUaG8JuFlKHjbn/o3DjzCxjQbP33M9t4VEwgkzPJ4kkZCZ1ZtLVvTPCxZc
 sgjrBbpixjqnDCiP0ou13moDa+4Th7D4wFV9qYacSPIP4Mm34Rj7hNKiPAkgyAPuGtt0=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nosVw-0008E1-0p
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 20:00:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gDHQr/46Ll+YF5RXidB7bzodWcAOTgjTzZrI+em3L64=; b=g39PxeAmrsyeqF7oG7t83UmsmK
 q+jHGkHAbmWvohxv26/jw0X2fC5ZQGAB+1t+RR3Dc/QcY0t/UuqqV0Rw0e0vNKpR3Ghg3EjPFEyRu
 xmyuTU8VIa0JckQ1LnJMbsmPzyPVIePtyYzY2GC02et+W2URhxptR9GwDO/JS6MpbzrCHGb/n2EjF
 MPTZc218MFC/xIv1c3Q0VBsXMBQNsxYCCeLWiYkZzdC6cvR08qY5ppLv8+FOFZTVkTAZbUvYrBQWZ
 fyGL7frjV8v7tGHHjzO9nQTkj7crGcqaoQ0KxvgjDlDQp5VOe0vE/nPeGF7YvXLizE8zXvpcRYVIg
 fCPXiI+Q==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nosV8-0008ee-V8; Wed, 11 May 2022 22:00:04 +0200
Message-ID: <1c7dfe73-6691-1ca5-7555-27e81dff4dcd@igalia.com>
Date: Wed, 11 May 2022 16:58:43 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Heiko Carstens <hca@linux.ibm.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-23-gpiccoli@igalia.com>
 <7017c234-7c73-524a-11b6-fefdd5646f59@igalia.com> <YnvoPe2cTS31qbjb@osiris>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YnvoPe2cTS31qbjb@osiris>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/05/2022 13:45, Heiko Carstens wrote: > [...] >> >> Hey
 S390/SPARC folks, sorry for the ping! >> >> Any reviews on this V1 would
 be greatly appreciated, I'm working on V2 >> and seeking feedback [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nosVw-0008E1-0p
Subject: Re: [Openipmi-developer] [PATCH 22/30] panic: Introduce the panic
 post-reboot notifier list
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
 sparclinux@vger.kernel.org, john.ogness@linutronix.de,
 Alexander Gordeev <agordeev@linux.ibm.com>, will@kernel.org,
 tglx@linutronix.de, linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 mikelley@microsoft.com, arnd@arndb.de, bhe@redhat.com, corbet@lwn.net,
 paulmck@kernel.org, fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, dyoung@redhat.com,
 vgoyal@redhat.com, mhiramat@kernel.org, pmladek@suse.com,
 dave.hansen@linux.intel.com, keescook@chromium.org,
 Vasily Gorbik <gor@linux.ibm.com>, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 gregkh@linuxfoundation.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 Sven Schnelle <svens@linux.ibm.com>, kernel-dev@igalia.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 11/05/2022 13:45, Heiko Carstens wrote:
> [...]
>>
>> Hey S390/SPARC folks, sorry for the ping!
>>
>> Any reviews on this V1 would be greatly appreciated, I'm working on V2
>> and seeking feedback in the non-reviewed patches.
> 
> Sorry, missed that this is quite s390 specific. So, yes, this looks
> good to me and nice to see that one of the remaining CONFIG_S390 in
> common code will be removed!
> 
> For the s390 bits:
> Acked-by: Heiko Carstens <hca@linux.ibm.com>

No need for apologies, I really appreciate your review!
Will add your Ack for V2 =)

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
