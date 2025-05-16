Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF9CAB93B2
	for <lists+openipmi-developer@lfdr.de>; Fri, 16 May 2025 03:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kI6IggE+yt3iZQJWs3YhmnrIihvAAHmjF2Tkx4xM2Yk=; b=UfJKCyFAKu7S2bUeP1mupgNhj7
	e3JjqhYtEQArpHKeFVaFzJGw0J6SbkZGEXGatgryPZbkVao20kdV0TDmjU1w05U61cMzE0I4WFruc
	y7JOBPAd7reGPIX3/T2m7Ddb8/4sJFOiqKOvj09D97MXq2mGYgeGPVhmzlSu+6Dsod38=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uFk07-0006bG-QT;
	Fri, 16 May 2025 01:36:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1uFk06-0006b9-BP
 for openipmi-developer@lists.sourceforge.net;
 Fri, 16 May 2025 01:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p3TP/VPMxxlEonz02VIawXMvSXarvt5nx0vp3mbv6Z4=; b=Chs2nonfzl5g9/vj4m5287z8a4
 kDoEPNN+ymspowM/lgeSN6bfdFdMz+9yefG6v23OSVnrSGNdY/pI3GnwoH5UIMXu4cHcrqls5OLp3
 sS5+M8WwEkYGIKnP9E3cp6JQwdP/alPJK470npsu4c1r9WbWyzS2lDWW16wIFpjVZsRk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p3TP/VPMxxlEonz02VIawXMvSXarvt5nx0vp3mbv6Z4=; b=aOcY9oe/7PG5BMluRGnjbb9/qF
 CC2b2h19mTr+iHUyoGy0TllOVEjiN2Iai+Wen+IWsghhpJOaEIHnEiotXO71fbqYPni22P/NCVpox
 XMqSjMXshAN8lu3tKVT/Uj4qaxQ/YiNNdBodpaCSskA0ku2OZhHQCOfmOH8NBI53UKGg=;
Received: from [90.155.92.199] (helo=desiato.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uFk04-0002xu-GO for openipmi-developer@lists.sourceforge.net;
 Fri, 16 May 2025 01:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=p3TP/VPMxxlEonz02VIawXMvSXarvt5nx0vp3mbv6Z4=; b=SVglxsZee/njbichUMAoYWcZUJ
 WrDx1MfXZ1iX19DCOZPzCu2YsVGZZpMkXyDVdoJ7L6Qgk+38RrS5PNzr2JDwat2ZhyBA4UOP+/LG5
 t9OfOft7yKTBzPXbHe8ZLJQmTqDsiJkOAebombxkUaFBqlb84FquCOB6evC8mgkIiD9ojt6eBMn8m
 F0gCPWkdsKnMRwR2Wh+FeX2cRZtS+l/hVgMN2rkAOHy68HGqryiFrkv/kR0/QFs/LpT+bYopZ9KqE
 YV8mCQmx8hgtth6W+XPgVnVXZ+/2M3EVVns3vwbsYuK4CLL6868A52dsB51AVCWVf1yIIPVnwHaIg
 M/cui+tg==;
Received: from [50.53.25.54] (helo=[192.168.254.17])
 by desiato.infradead.org with esmtpsa (Exim 4.98.1 #2 (Red Hat Linux))
 id 1uFj3O-000000000s6-3vup; Fri, 16 May 2025 00:36:01 +0000
Message-ID: <5baa0fc5-bdb4-45bc-a986-171fa440e2e5@infradead.org>
Date: Thu, 15 May 2025 17:35:55 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Praveen Balakrishnan <praveen.balakrishnan@magd.ox.ac.uk>,
 corey@minyard.net, corbet@lwn.net
References: <20250515234757.19710-1-praveen.balakrishnan@magd.ox.ac.uk>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20250515234757.19710-1-praveen.balakrishnan@magd.ox.ac.uk>
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/15/25 4:47 PM, Praveen Balakrishnan wrote: > Corrected
 various spelling and grammatical mistakes in >
 Documentation/driver-api/ipmi.rst
 to improve readability. > > No changes to the technical con [...] 
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.92.199 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.92.199 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [90.155.92.199 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1uFk04-0002xu-GO
Subject: Re: [Openipmi-developer] [PATCH] docs: ipmi: fix spelling and
 grammar mistakes
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
Cc: openipmi-developer@lists.sourceforge.net, skhan@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 5/15/25 4:47 PM, Praveen Balakrishnan wrote:
> Corrected various spelling and grammatical mistakes in
> Documentation/driver-api/ipmi.rst to improve readability.
> 
> No changes to the technical content has been made.
> 
> Signed-off-by: Praveen Balakrishnan <praveen.balakrishnan@magd.ox.ac.uk>

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

> ---
>  Documentation/driver-api/ipmi.rst | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/Documentation/driver-api/ipmi.rst b/Documentation/driver-api/ipmi.rst
> index dfa021eacd63..d9fb2376e8da 100644
> --- a/Documentation/driver-api/ipmi.rst
> +++ b/Documentation/driver-api/ipmi.rst
> @@ -45,7 +45,7 @@ manual), choose the 'IPMI SI handler' option.  A driver also exists
>  for direct I2C access to the IPMI management controller.  Some boards
>  support this, but it is unknown if it will work on every board.  For
>  this, choose 'IPMI SMBus handler', but be ready to try to do some
> -figuring to see if it will work on your system if the SMBIOS/APCI
> +figuring to see if it will work on your system if the SMBIOS/ACPI
>  information is wrong or not present.  It is fairly safe to have both
>  these enabled and let the drivers auto-detect what is present.
>  
> @@ -63,7 +63,7 @@ situation, you need to read the section below named 'The SI Driver' or
>  IPMI defines a standard watchdog timer.  You can enable this with the
>  'IPMI Watchdog Timer' config option.  If you compile the driver into
>  the kernel, then via a kernel command-line option you can have the
> -watchdog timer start as soon as it initializes.  It also have a lot
> +watchdog timer start as soon as it initializes.  It also has a lot
>  of other options, see the 'Watchdog' section below for more details.
>  Note that you can also have the watchdog continue to run if it is
>  closed (by default it is disabled on close).  Go into the 'Watchdog
> @@ -317,13 +317,13 @@ This gives the receiver a place to actually put the message.
>  
>  If the message cannot fit into the data you provide, you will get an
>  EMSGSIZE error and the driver will leave the data in the receive
> -queue.  If you want to get it and have it truncate the message, us
> +queue.  If you want to get it and have it truncate the message, use
>  the IPMICTL_RECEIVE_MSG_TRUNC ioctl.
>  
>  When you send a command (which is defined by the lowest-order bit of
>  the netfn per the IPMI spec) on the IPMB bus, the driver will
>  automatically assign the sequence number to the command and save the
> -command.  If the response is not receive in the IPMI-specified 5
> +command.  If the response is not received in the IPMI-specified 5
>  seconds, it will generate a response automatically saying the command
>  timed out.  If an unsolicited response comes in (if it was after 5
>  seconds, for instance), that response will be ignored.
> @@ -367,7 +367,7 @@ channel bitmasks do not overlap.
>  
>  To respond to a received command, set the response bit in the returned
>  netfn, use the address from the received message, and use the same
> -msgid that you got in the receive message.
> +msgid that you got in the received message.
>  
>  From userland, equivalent IOCTLs are provided to do these functions.
>  
> @@ -440,7 +440,7 @@ register would be 0xca6.  This defaults to 1.
>  
>  The regsizes parameter gives the size of a register, in bytes.  The
>  data used by IPMI is 8-bits wide, but it may be inside a larger
> -register.  This parameter allows the read and write type to specified.
> +register.  This parameter allows the read and write type to be specified.
>  It may be 1, 2, 4, or 8.  The default is 1.
>  
>  Since the register size may be larger than 32 bits, the IPMI data may not
> @@ -481,8 +481,8 @@ If your IPMI interface does not support interrupts and is a KCS or
>  SMIC interface, the IPMI driver will start a kernel thread for the
>  interface to help speed things up.  This is a low-priority kernel
>  thread that constantly polls the IPMI driver while an IPMI operation
> -is in progress.  The force_kipmid module parameter will all the user to
> -force this thread on or off.  If you force it off and don't have
> +is in progress.  The force_kipmid module parameter will allow the user
> +to force this thread on or off.  If you force it off and don't have
>  interrupts, the driver will run VERY slowly.  Don't blame me,
>  these interfaces suck.
>  
> @@ -583,7 +583,7 @@ kernel command line as::
>  These are the same options as on the module command line.
>  
>  The I2C driver does not support non-blocking access or polling, so
> -this driver cannod to IPMI panic events, extend the watchdog at panic
> +this driver cannot do IPMI panic events, extend the watchdog at panic
>  time, or other panic-related IPMI functions without special kernel
>  patches and driver modifications.  You can get those at the openipmi
>  web page.
> @@ -610,7 +610,7 @@ Parameters are::
>  	ipmi_ipmb.retry_time_ms=<Time between retries on IPMB>
>  	ipmi_ipmb.max_retries=<Number of times to retry a message>
>  
> -Loading the module will not result in the driver automatcially
> +Loading the module will not result in the driver automatically
>  starting unless there is device tree information setting it up.  If
>  you want to instantiate one of these by hand, do::
>  

-- 
~Randy


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
