Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 764C0BDE4A1
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Oct 2025 13:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WLgROpGSDBk7Ls0lqCflCb/j4lJnxu7F7N8D34hSBkw=; b=gu/FFD6d4i/g652nfZ3UnGnqcK
	+Rz7tU3Rplk5bMmW8XxX/mQYuSeQoeGJoUuSY9/GsUeRtWi+Yu5aff3CDF1DgzFt8VA2HatfHpC7K
	QiaocB8u7q2mOzjkZThrnDKxLAyPWFIAiB4W7zgFkDRD/KLq8ucyUn3pd3IY3M/3oIPY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v8zpM-0003lU-Sh;
	Wed, 15 Oct 2025 11:37:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1v8zpL-0003lJ-69
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Oct 2025 11:37:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GyADvYjKnQqyX4oYA1nEg/1fwJhYN8XvPFT/8EJ6yc4=; b=EdWc9ABppY3aYCyi/b8mIYRjnC
 rO+BSwjHQ8Og/gsFaY59biJ+eG4wcJePmG/nTESxLIC0dogsv58xfuFEtgeJW6rHchSSQqLQx0ebn
 F/BrK5YtHEVHtWhzAqiwHohsz9N7lFJuCUxKOzkekwQjRGIRhhjK6zZEdL9qd+TZECwI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GyADvYjKnQqyX4oYA1nEg/1fwJhYN8XvPFT/8EJ6yc4=; b=kBNtSe0j8WXqExAUHKth0//i2P
 EeEneggbqriDV3c0Yj/eco0N/nRkIBYOOprK2MA7p7Cm0ReKqNUGpcxeM4cgchmYj6iJ7ddeV26Sj
 e9Xr535hgD2bgbRuMT3RRR4y1dCSwAwOwbpVQlcj6YvVVSayiXJi0cdq23ygNgRff4ec=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8zpL-0004ca-IH for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Oct 2025 11:37:55 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-7827025e548so2642798a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 15 Oct 2025 04:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1760528270; x=1761133070;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GyADvYjKnQqyX4oYA1nEg/1fwJhYN8XvPFT/8EJ6yc4=;
 b=Isd1r59BFKTLMxEYcOeD9ltB+ojwY4WUmREZvukgTpwrXBiYJnrRqTFruFfKiM7qgX
 tOLowcRCmAUbne8zpmxTpoM9zDTKyjKT5D8/6c1EyQLrG39UeJh2B76+or3BcHPBtNsW
 BuWoCsV3BelayvAAiwDMkbggzG90rY7W4FeE92WmekqmiJhDzbDcU0FblE5yOFxDTZuQ
 eIv5T2USXEiTR57oUX6zAiXIN7htGYEfqai6d4qhhI8kSI2MgsicyasdIGhzVQPyEQzB
 S0+hUJ6YbijcvpB9XodY3tn+lg6/3zqVW++B3PmSsom/pqDkxuCEGOSy0P9AYONCfNue
 tYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760528270; x=1761133070;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GyADvYjKnQqyX4oYA1nEg/1fwJhYN8XvPFT/8EJ6yc4=;
 b=esfvQCsFiu9pU7pbhO7IeL+MQzXTfdVou+GHsk0705PtTfTLgbAUXWNiPn+yi+2x8h
 sLk83VjESUHG9KnQphHvh7rgtj8giiW2Nw708bAzkBb3/J1RKhbUg6rcnH+g4t5qPaKa
 EnvTrskIzBhQ8FIgVOynj8WkprljVHIVFkpwmbqBUo+ml1mk1t2AQPD7bI0nul9Q3Mm2
 6gq/OXucanV+adXS47mXVN9GkswB/jE4m32J1Q0UHQXsTKgZdbghaMKfoFpndS50iNh7
 u3EheLgFVrBabKfQie1jsRvdQjjs7cHlot/A2rS7EwVW6E+ISS+JpnPsgvKO6F+2ddGH
 GhEA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKRJhRUpzIsEvmF2RrJ3LWt9bu+Z+66duiwvOaJc/bzQPAdsDFmeOC95z5w9Fn1JFeyr/38DtOSTH37jjzidRB8i8=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzcSQlPKZJE+X358HjOQjStF95BlUpRuL6+ovu2UV4DkIPxEgL0
 fHqp9VixJGjeb11KB2XlIW3kzS5aUkr9r/p3MAMARGSwxU/E6JPDGGk4ce7s5RtK5sM=
X-Gm-Gg: ASbGncunfiowPnUQs2FtrktxQPrsMdRW1oG7kJpktJNe8St52kYCdlFa8lWvt9UrHkK
 E7pkm1KhBuVt/fERmP4Q23W4Z2czaj0Dz/T6NDbSY87fbi3PtjK39ww++jJ9qL4y3TQ4bQfZ9x/
 cKo1abQyLDCZrnMcbMGgIOTcdukUmRco42dubPkpOxCFe0vTkskgcr4uLJDvvuK7eKvvrZwnkJP
 4TRFT8KaisEMH77rH2VPqTdIhvNvf2q8lCRr4Fv86JvUKZ2SOKpgRXj8lg4x/NrX3IWzVZcc/+r
 i23k8/kPumDSat+nGrFdWymvU6pVAJOGawKj/gc+y6lDzuozddwRn4XDls38WlVtkJ0w0SlJsi7
 vHOajgxH1lvlarm+1Ce90MIVeBpKA8nhUYfDfjlPr1ABE
X-Google-Smtp-Source: AGHT+IF8ikLsunnofVE7oR/wbYs0vteDdLFTVIEJJlab2tBfktgzDPUgm0kamWs++bBcUapugbYm5Q==
X-Received: by 2002:a05:6808:e83:b0:441:8f74:f31 with SMTP id
 5614622812f47-4418f74263dmr9403478b6e.59.1760528269821; 
 Wed, 15 Oct 2025 04:37:49 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ad63:63fb:ee1c:2ee9])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c0f915efddsm5245179a34.34.2025.10.15.04.37.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Oct 2025 04:37:48 -0700 (PDT)
Date: Wed, 15 Oct 2025 06:37:43 -0500
From: Corey Minyard <corey@minyard.net>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Message-ID: <aO-Hh4i_NAh1O_Mm@mail.minyard.net>
References: <20251015095556.3736330-1-zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251015095556.3736330-1-zhoubinbin@loongson.cn>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 15, 2025 at 05:55:56PM +0800, Binbin Zhou wrote:
 > When merging the Loongson-2K BMC driver, temporarily removed the > addition
 of the IPMI driver entry in MAINTAINERS to avoid conflicts. > [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v8zpL-0004ca-IH
Subject: Re: [Openipmi-developer] [PATCH] MAINTAINERS: Add entry on
 Loongson-2K IPMI driver
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
Cc: Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Oct 15, 2025 at 05:55:56PM +0800, Binbin Zhou wrote:
> When merging the Loongson-2K BMC driver, temporarily removed the
> addition of the IPMI driver entry in MAINTAINERS to avoid conflicts.
> This needs to be fixed as soon as possible.
> 
> Now, adding myself as maintainer for the Loongson-2K IPMI driver.

Got it for next release, thanks.

-corey

> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 46126ce2f968..053295599785 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14660,6 +14660,7 @@ LOONGSON-2K Board Management Controller (BMC) DRIVER
>  M:	Binbin Zhou <zhoubinbin@loongson.cn>
>  M:	Chong Qiao <qiaochong@loongson.cn>
>  S:	Maintained
> +F:	drivers/char/ipmi/ipmi_si_ls2k.c
>  F:	drivers/mfd/ls2k-bmc-core.c
>  
>  LOONGSON EDAC DRIVER
> 
> base-commit: d27fea27a307656f0b55d6b9ac24caa40c7e4181
> -- 
> 2.47.3
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
