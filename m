Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEB251FD3D
	for <lists+openipmi-developer@lfdr.de>; Mon,  9 May 2022 14:51:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1no2rG-0002eq-7n; Mon, 09 May 2022 12:51:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1no2rF-0002ek-4Y
 for openipmi-developer@lists.sourceforge.net; Mon, 09 May 2022 12:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vNWZxas8t1kFoCf13D7/vaEHrhXkMcvheesCeQUODMg=; b=Q2UIssm0ne0GJ9RNGeaDhesU9t
 WYkJh14Kq0bo7g1Qr8ThAcdzL98zEIjzlINmILE4B6nBIUScX6g0sRvWuzt9nbRaysVv2O1ekoIPF
 1l8+jTZfRNnAXqxOa3JuPk2fu7xnJgJNr64MABatFoUnLUJ/6dkxkgU6hraXAa03cnts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vNWZxas8t1kFoCf13D7/vaEHrhXkMcvheesCeQUODMg=; b=fIQoTYOS0J2eENhsEluSYHWGWp
 0wohccEK2C6a/54noytCRiYE+7ShRX7DYSdvJ++FGwbBB7idKU+z+x2YX1LntClIkSrDOPHfJf2Zu
 YUNKJ2UebF4AWq9JuwQlc0nqWX3hDwlCmrk5jpDtcrjFavuB0td68uZSZ5ecg2QHfUrg=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1no2r8-0008Ml-Ox
 for openipmi-developer@lists.sourceforge.net; Mon, 09 May 2022 12:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vNWZxas8t1kFoCf13D7/vaEHrhXkMcvheesCeQUODMg=; b=LiRqvKrtw9XJxMP26bz+wzbn1n
 fBHqZS6c/XR8QMIkcDbMMcoNGulyS43Rfp83nqthIjvwxcC0/rE6EUbNIf51/kQdvFB0MZLjpT1Zt
 jPlWUhML/RrgwA/8AbWtoLwz1yzaOdGTpwde1q8bM8ZApOffPjJ50hQj+UprMTPvFMZ+3kTukzvDC
 T+M3aUntgoIptglMOe9noJu8WxIIHyHpxsCC1uL0UNNnEkCrtSTA6MLc7ESoFMKljoD3/1VBzhboF
 ZG7o2pwmSFhOEypVckR6q5+g5/pOsvXV3qshYFBj5WEOrVLcV95X7vQdrWZ9lJh80TjIodpEGtnLe
 +KvSh8AA==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1no2qT-0003gn-07; Mon, 09 May 2022 14:50:37 +0200
Message-ID: <f9c3de3c-1709-a1aa-2ece-c9fbfd5e6d6a@igalia.com>
Date: Mon, 9 May 2022 09:50:05 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Hari Bathini <hbathini@linux.ibm.com>,
 Michael Ellerman <mpe@ellerman.id.au>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-9-gpiccoli@igalia.com>
 <3c34d8e2-6f84-933f-a4ed-338cd300d6b0@linux.ibm.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <3c34d8e2-6f84-933f-a4ed-338cd300d6b0@linux.ibm.com>
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 05/05/2022 15:55, Hari Bathini wrote: > [...] > The change
 looks good. I have tested it on an LPAR (ppc64). > > Reviewed-by: Hari Bathini
 <hbathini@linux.ibm.com> > Hi Michael. do you think it's possible to add
 this one to powerpc/next (or something like that), or do you prefer a V2 with
 his tag? Thanks, 
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
X-Headers-End: 1no2r8-0008Ml-Ox
Subject: Re: [Openipmi-developer] [PATCH 08/30] powerpc/setup:
 Refactor/untangle panic notifiers
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org, will@kernel.org,
 tglx@linutronix.de, linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 mikelley@microsoft.com, john.ogness@linutronix.de, bhe@redhat.com,
 corbet@lwn.net, paulmck@kernel.org, fabiomirmar@gmail.com, x86@kernel.org,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 pmladek@suse.com, dave.hansen@linux.intel.com, keescook@chromium.org,
 arnd@arndb.de, linux-pm@vger.kernel.org, linux-um@lists.infradead.org,
 rostedt@goodmis.org, rcu@vger.kernel.org, gregkh@linuxfoundation.org,
 bp@alien8.de, Nicholas Piggin <npiggin@gmail.com>, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, akpm@linux-foundation.org,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 05/05/2022 15:55, Hari Bathini wrote:
> [...] 
> The change looks good. I have tested it on an LPAR (ppc64).
> 
> Reviewed-by: Hari Bathini <hbathini@linux.ibm.com>
> 

Hi Michael. do you think it's possible to add this one to powerpc/next
(or something like that), or do you prefer a V2 with his tag?
Thanks,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
