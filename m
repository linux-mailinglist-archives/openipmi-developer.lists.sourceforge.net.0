Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 445A3967BF2
	for <lists+openipmi-developer@lfdr.de>; Sun,  1 Sep 2024 21:36:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1skqNL-0005QG-LT;
	Sun, 01 Sep 2024 19:36:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1skqNJ-0005Pz-Mk
 for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Sep 2024 19:36:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XiOFp46qhP2eeXetIvuZsxlfaW7Lra2Ek61RDRs0VMM=; b=Ak7RcypL4IITHAy/Bpd5sEDf6F
 vvdIJHcIK08uVg4EBi93rUXt5l3pT/nMuqqmgRYJKSDFnLspK/064Lnxq5JlMginTTvU+67AeTVbT
 Xl8K9u1KqmCVzXES1kqJAzgvyQiEexAswoJjqkTEShwlWt1OaL9R5gMvstm6PytO085A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XiOFp46qhP2eeXetIvuZsxlfaW7Lra2Ek61RDRs0VMM=; b=dbk2TvAdDrvK4EYjgRyuQyYBHl
 a3/BNZx8/Ozoxcj2lAXnS9mo3qLaRcbYgNJIOqBld1hbADKN+Y0yYNB5x3mZM9W4zs5Kqhy2xpvTz
 pU7wgUYuHa+/MeT/Dvue5ZAnmmhbr7Z/nLlaVh+bW2V/QBpQRWhkrcU7lAvxxIU5+fWk=;
Received: from mail-oa1-f52.google.com ([209.85.160.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1skqNI-0006aY-Po for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Sep 2024 19:36:37 +0000
Received: by mail-oa1-f52.google.com with SMTP id
 586e51a60fabf-277cfd3f07aso585774fac.3
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 01 Sep 2024 12:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1725219391; x=1725824191;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XiOFp46qhP2eeXetIvuZsxlfaW7Lra2Ek61RDRs0VMM=;
 b=eNhmx9xM6dZYyJcV6Yd70RLPzbfuCzTz0k2+Bh3a5XxRweXzsm6jVbIcems0o1yHh+
 T5nNjY+8eQTVDYVn8qMtkfJ3SglVuhtDfeb15UuLt6nq03QaRVsO1pC4e9wqA/F2zuZz
 s5CKuXYYkArn1KlAc0/vyAxY6zO5K8faWEm+te7iFW84TvBHmvIpXqVgk9/f0zV7Fdo5
 ciG4R5kCiMEyuaeWgU47zANqf51ojzq98/VJUJnOtNcAr0L0H+45dbvLD3DBvENjluki
 Uh68GCjHCDP0qFza2bTEzHbbYyfNfqM191V7j0p1odcITtqi+rqgX4RwRQbaPa57f4s9
 jGqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725219391; x=1725824191;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XiOFp46qhP2eeXetIvuZsxlfaW7Lra2Ek61RDRs0VMM=;
 b=d09uhB99tDDj5xm+UmnzizJXiy4+eF7G0/+pexJS6UkZAGg8o5GWBtsVDXsbwa2nbw
 o0Zvd/V494Ffyql/yCunuqnNDFPQit/OJ+8mO48qjpWjmLTgNxH70/z6/b+LDx3PpNh8
 fPrN+kAUejw05AhzilyscuGwu82YLnC0hnodEJbd3HEbKHwKKT+lkvcTjRPzfaktpYy3
 cjiILeRSwfD6uCb1kBWBYVPwG/uSRhBgFQ7EA3swMvIVa6ti2dVHrVa85OmlvfPzkMkc
 hZb0YEfq+2bI7lrjOuVD/vMpR4yYmeELcMFV4R9Nrcg7HEpIC69FcvH/BDkhfu/HwfvF
 8q5g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWYjXDjuVoxFtEQyEvGAcSr7dulQ3wQ1gjkwS341wxviuYDBJ27D+glawWw2fmp3qd9Wx3GCbVp/AcNvfOck3dFvh4=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzNi6jfwk0vtO9pXYuhau3tqB3poQ9MW1G0xeoivM7Re/9RoF3t
 x2F4W/MgIUJ/fac/iJqhaJ+3UJkx+7fRF8rsrDpip8O2yNJrn3nbiGYROGuHdkE=
X-Google-Smtp-Source: AGHT+IG5bNU+8xFP1f27d3WC/VyPLz6YYCq5+TlVAUmorRNBQNYcIL6WeKBq4LEQuKFASWo/wAm4kg==
X-Received: by 2002:a05:6870:9a1e:b0:24f:e5f2:1cf0 with SMTP id
 586e51a60fabf-277900c6c6dmr14746876fac.14.1725219390944; 
 Sun, 01 Sep 2024 12:36:30 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:a4c5:2f87:1c10:5fa2])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-277cb790846sm1259385fac.47.2024.09.01.12.36.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Sep 2024 12:36:30 -0700 (PDT)
Date: Sun, 1 Sep 2024 14:36:28 -0500
From: Corey Minyard <corey@minyard.net>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Message-ID: <ZtTCPPZSzVZMZiqf@mail.minyard.net>
References: <20240901090211.3797-2-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240901090211.3797-2-wsa+renesas@sang-engineering.com>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Sep 01, 2024 at 11:02:11AM +0200, Wolfram Sang wrote:
 > "i2c-adapter" class entries are deprecated since 2009. Switch to the >
 proper location. Thanks, in my queue. -corey 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.52 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skqNI-0006aY-Po
Subject: Re: [Openipmi-developer] [PATCH] ipmi: docs: don't advertise
 deprecated sysfs entries
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
Cc: Corey Minyard <minyard@acm.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, linux-i2c@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, Sep 01, 2024 at 11:02:11AM +0200, Wolfram Sang wrote:
> "i2c-adapter" class entries are deprecated since 2009. Switch to the
> proper location.

Thanks, in my queue.

-corey

> 
> Reported-by: Heiner Kallweit <hkallweit1@gmail.com>
> Closes: https://lore.kernel.org/r/80c4a898-5867-4162-ac85-bdf7c7c68746@gmail.com
> Fixes: 259307074bfc ("ipmi: Add SMBus interface driver (SSIF)")
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  Documentation/driver-api/ipmi.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/driver-api/ipmi.rst b/Documentation/driver-api/ipmi.rst
> index e224e47b6b09..dfa021eacd63 100644
> --- a/Documentation/driver-api/ipmi.rst
> +++ b/Documentation/driver-api/ipmi.rst
> @@ -540,7 +540,7 @@ at module load time (for a module) with::
>  	alerts_broken
>  
>  The addresses are normal I2C addresses.  The adapter is the string
> -name of the adapter, as shown in /sys/class/i2c-adapter/i2c-<n>/name.
> +name of the adapter, as shown in /sys/bus/i2c/devices/i2c-<n>/name.
>  It is *NOT* i2c-<n> itself.  Also, the comparison is done ignoring
>  spaces, so if the name is "This is an I2C chip" you can say
>  adapter_name=ThisisanI2cchip.  This is because it's hard to pass in
> -- 
> 2.43.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
