Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C10AB9311
	for <lists+openipmi-developer@lfdr.de>; Fri, 16 May 2025 02:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vfaDJ09njOmdELhI9fpnjEu1+lygH5o74GcxJx9jQu8=; b=EB6HGmkycl8fwrJ/YF7h2Uuqgk
	LIO/1NKnfXCiUsq+SO1oVFledAnGT27VagjGiEmb7urRtgdnVkHyDcBjkoU2RPxdRl+jPwEAyE2j6
	a+EisBgvKMZiwAzJVm/4fYFEpzfiGZO5WBfTFC4vXhnoTPcndL0sD8oyTeR8qRZDhV3c=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uFihv-00068W-8w;
	Fri, 16 May 2025 00:13:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uFihu-00068N-8O
 for openipmi-developer@lists.sourceforge.net;
 Fri, 16 May 2025 00:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fIQzh+d2Cl2iQMRyzQRgpL9ZV/FSzUS9sLNvNDM8pQA=; b=d577XS5vKwLMPirCK2Q5wuiMzQ
 zz9VLmC1mPZEhMvbn+pIHMlN9qvDs+kyeG61bOthelzyD66sn0wYS+/rih4fSDwcAZeLcmjmUXCzj
 cDu53hjZjFmNNL+Lf+qWoRzn7+x80c/VNeUqWkywPu7e9tbeUqQuOsnnbhbXy1RxTM/0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fIQzh+d2Cl2iQMRyzQRgpL9ZV/FSzUS9sLNvNDM8pQA=; b=JSju1WeBMyfhYxp5+R8mg2vSvF
 UuohoKZx/pMgiakMbx4pZYTCi/MOQjVky0R42SNZWrQ6pVPkuSIY9QBRxdeNy+OVaVUKXNiqlIlD3
 oIvKowwpMogiC3+355frvdXf+NDePcxT3UPnya5ZGnJiTjklHsyoeWBW6PkyLKh7lrlE=;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uFiht-0000hp-71 for openipmi-developer@lists.sourceforge.net;
 Fri, 16 May 2025 00:13:46 +0000
Received: by mail-oi1-f175.google.com with SMTP id
 5614622812f47-401be80368fso725578b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 15 May 2025 17:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1747354414; x=1747959214;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fIQzh+d2Cl2iQMRyzQRgpL9ZV/FSzUS9sLNvNDM8pQA=;
 b=tEJ9MGOrNcby1y45c5GHvL/N4CurHhDHGDz8Cx4eGn+T7PQPt7g8e7OHLXJah9VodG
 S9XJfyMt/46vtE9TB6h2z8TI/wASltKLZmEtd7O9cm+jvGAMOaVstvWgu53P8buVWyG+
 N1p/JbIOnWlE7/TqcMgUFPF4iD4ZyHimuwNORQcNPLM8tvDpiC9/S8/+2iviWBh8UB+F
 gNk/8GF9WRzk8h4D+STIb7Z8Yp1jNqYfWIwHqCiSFFNcLb28aPcd78hIfaa/fcWKze6t
 HuE8zwabHmTOe2+cJKz+w+Buwstdh0igdhpCQPKPDrwunSsaOEQoICVoAS9tcuygk/3Q
 sZ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747354414; x=1747959214;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fIQzh+d2Cl2iQMRyzQRgpL9ZV/FSzUS9sLNvNDM8pQA=;
 b=EEADU6Fgl8i3FLkGaftEkfI05K8kV6nf7G5wKmldi3KmZSPG2Za6YaiFwHc7RxRVfK
 TutzQYAz44aEX8CSzKPARvZKomPatFb9pEWKvYjHtTpyOlPm0ZbcV1jvfqDj8D75rDtM
 BlVpcMUkMI/OeaiN1SU0b6yheRVJ/wB7EYsCk7ubAL9a/l7X3P1ueDqLMAxViikTiq0x
 YDAQiN2sEERf3qL+Apl2w/8mIrvvFxgjGzEODasd/d2qkbOwAtf8nKwtTaTYjBNRy8bz
 /1kMO9Dk8+x7hivE6Ne45gD8S+1/rI1saX7AYnfCX0ilvUVXdqSOZ589V3XDnYBREODl
 Pw2w==
X-Forwarded-Encrypted: i=1;
 AJvYcCX65wE8zTh7GRXfT7XBCkFan9cth48abJl23kJHh3T9gRehunRFdvCHDSX2cJcvBtjt227C3WHnd0Oq6BAR5Bv5HSM=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxhHAggymRDWDVEXqf5k0GcB5gqcmzl3XQOx2Q/6xCXFaZekq1U
 6tXLAkw34/+l0QBGRMyTTkE11WameYTzUAsWMn9iKpj1SMOE3ox5ndy3waRDQlEJQgw=
X-Gm-Gg: ASbGncse0J4W6MWV7NyOMRSaob1jjvr9cXMiH5z+7pzNLAhkJimnnDUsPOp7LUzVmpG
 /FhjO5qWXSgmCcG529B/S0CEsDymD0rFbNt7DJCypTAT631nO6X+7CE2tp+TbW+7zlAsBg4v8Uy
 NRR2kDJXGP6RH5BtzPg9Y/aOGbEpUNC13mjJhul0jTSlxDoAzuvrsvLTDxn8sYrnDZxMLHEQdVd
 b0m67FJBMUxkoFK28k3Z3IN2B7VK3Jic5DoHJUyFYW04B2rtHWuue+cY2PIX40GBTbppPq94QE+
 Gc3WVd6LTDZRHUWjI6Ius+YEFKnRTtI+5YU2Bp8eiVhCFDMq1wcolcE=
X-Google-Smtp-Source: AGHT+IHw+xOETWTyOT89ZTuJ4/7y2Jcun/+WyMsgKHv9WFHVKeTtE/CECud8o+oMJFlD/SDqIiuTug==
X-Received: by 2002:a05:6808:338c:b0:3f9:2fdc:ee93 with SMTP id
 5614622812f47-404d87b897dmr1274677b6e.30.1747354414372; 
 Thu, 15 May 2025 17:13:34 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:d0c5:1ce0:9035:258c])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-609f2f43884sm188602eaf.15.2025.05.15.17.13.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 May 2025 17:13:32 -0700 (PDT)
Date: Thu, 15 May 2025 19:13:27 -0500
From: Corey Minyard <corey@minyard.net>
To: Praveen Balakrishnan <praveen.balakrishnan@magd.ox.ac.uk>
Message-ID: <aCaDJyq18soCNMqa@mail.minyard.net>
References: <20250515234757.19710-1-praveen.balakrishnan@magd.ox.ac.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515234757.19710-1-praveen.balakrishnan@magd.ox.ac.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, May 16, 2025 at 12:47:57AM +0100,
 Praveen Balakrishnan
 wrote: > Corrected various spelling and grammatical mistakes in >
 Documentation/driver-api/ipmi.rst
 to improve readability. > > No change [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.175 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.175 listed in sa-accredit.habeas.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.175 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uFiht-0000hp-71
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
Reply-To: corey@minyard.net
Cc: linux-doc@vger.kernel.org, corbet@lwn.net, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, May 16, 2025 at 12:47:57AM +0100, Praveen Balakrishnan wrote:
> Corrected various spelling and grammatical mistakes in
> Documentation/driver-api/ipmi.rst to improve readability.
> 
> No changes to the technical content has been made.

Thank you, I have added this to my tree.

-corey

> 
> Signed-off-by: Praveen Balakrishnan <praveen.balakrishnan@magd.ox.ac.uk>
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
> -- 
> 2.39.5
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
