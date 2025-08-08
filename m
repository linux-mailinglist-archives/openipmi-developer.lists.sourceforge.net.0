Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C18B1EA9B
	for <lists+openipmi-developer@lfdr.de>; Fri,  8 Aug 2025 16:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JVmKsPUhfyfQrhDZRlQ6wdvXpHEQdKnEhqbnVRo+2ow=; b=dJ5jM0abL8533Rmz32U5zyC7+a
	zJcp6jSaTR7T7Cis+C8WKG1Jl2ODe74W8T0Up5h2PHoaCWmhyT76uLeFEkSrctHIbw8YYNE94Tlxc
	kxlafUhmT5feH7jUwh2Pe41MNFH7T8T0AuX56AuCnChBukqAP0BhvkQYt0jo2LaxE2Tc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ukOOL-0002pH-N5;
	Fri, 08 Aug 2025 14:48:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1ukOOK-0002pB-Da
 for openipmi-developer@lists.sourceforge.net;
 Fri, 08 Aug 2025 14:48:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ewzjsdpoAykHhEBFgJ/UB1pQfM2cO3t1vQCCzVyKC6Q=; b=lzrlrLGu0MlrvcW4p81rxfZZbj
 HPlHz7CjMD5utHTJ8aeo6NaMY06jdYWYlNq6YP0pxvimJuObhgZ6tyiuWnEOY6OcyI+fdmaJ5dPco
 LP+JlROIDccffz58RReDhnfyItQYLgQKjbLr2LHGFw/1aTxvTfOAsZfwdj4WUb3+3tHA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ewzjsdpoAykHhEBFgJ/UB1pQfM2cO3t1vQCCzVyKC6Q=; b=HonSmijxHIyXF+deayaClBg7EZ
 9Y0QvJlnjEFf9fJc2v47sO+8WLy1R7G9KwwbgBr5lwxStp5djuaUoBd9GqKMKk27WTPBrZHZoK5IJ
 J6SBl/wmvi+PfENfuQNHXJV9HAAqhPN5VFgbVCPrGAt+5MpNSLxcIh30TmGwuch88XT4=;
Received: from mail-oo1-f41.google.com ([209.85.161.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ukOOK-0000nC-0Q for openipmi-developer@lists.sourceforge.net;
 Fri, 08 Aug 2025 14:48:20 +0000
Received: by mail-oo1-f41.google.com with SMTP id
 006d021491bc7-6199bd72532so1326014eaf.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 08 Aug 2025 07:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1754664489; x=1755269289;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ewzjsdpoAykHhEBFgJ/UB1pQfM2cO3t1vQCCzVyKC6Q=;
 b=ZQM0I09qPx3wymIOEFJGs3K1SupJQqQQ35O/foJdso5NGUl40lZKagvzrgU1gIwyFh
 /C6p1iPBPeLkN816ifPwkKJkbvQHYAFKadtrZGFDuXoTuQOQBudfVwatK1rJtlauy1Nh
 Xz/jqVsvFDDc3XwhPy3WACN2dLvp79No2clU8ytJSq78nN55kntkRlBbkAOXS6sjuUsG
 AHF5r+ExkrcYAVkXhgaopdwoD0wE4n75YR8xDR0Zc6vmoT4/8VeQzlge95VBdmELntmY
 rlpzwGcyFEI/c29V2MavB+daT2/LlPWVwAkyecyHOTNEV5t2x49+eZ7ft+8Vz02YPQSY
 62FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754664489; x=1755269289;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ewzjsdpoAykHhEBFgJ/UB1pQfM2cO3t1vQCCzVyKC6Q=;
 b=X0mzzzaQTyxACVWxcvYqwpHpskAp+/vqAVw829oPnVmQrI0YpeSx3pd5C5S6hf7kL7
 A8pFL2JcmCYai87PMZbJNDmpas6W6NFpXD3cOijdxPen4eIfmRrEYmkzsFkPhkF6B44K
 lt5D+sWKW9on1IHOqGximW+PyZL7tmtPoZKHs0H+r6ut/u6tuqbTsfKRnSk/g6POx030
 KxGKDKbk8IrH4v4pC7s5PYKWduw8ktpOlIEfWlAaXzo/eXLX2jYNolJzn4deubXeclfv
 qhDlHffORrndvAKQb0OYXWI9/y756i5OfxRrD2AQKav5fr+/arEGdI8lP82cpZm3iWzE
 0dHg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW7awRQyXpD4sKTSSy2E21qxtx5MJjm230qJxvh4i+3/VArmAHTaBHaAZiyG0OfZEz48LfvHO/jWh+GuEq0770a0Cw=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy8iJreyR47EilRmn4HN3LUPsRI0e9c0/Ffnq9m0ykGx7Y4uuNa
 HvhtINHAO+gqs5NXaKnuPbvOhPZR9n+V/6asS31+cWLXMt0hvdMDCzwvr1c4i/QLlo0=
X-Gm-Gg: ASbGnct7kH1ppowMumPy+VjH8uHW72UY5DLg4lEkUUXUBU9OtFJQuM8l4ds4kb/3Ktt
 afRG/qD98ljwWY2eobr/XFrCB1Pvj0VXTO+9WPGvU5tLH2ppzwtcuqkO0tqBkP7Ij3p4DB65D8h
 1oMH48deG7wylWZzJGspx2Nip3357M2K4yt1411tW9XEMSjQzAJs2kWb7a+6a41PSwhm3jK3kzS
 OrBe+ej1q+gxhaMspb9Y5H6OAn7hGaFdhCnFr9XgUO7XeLRVi60yGOfusIufL++yQcKn8XcSxBB
 7ZlQDaT+mb+5NxrU35u21t3SCbxrWYQ1b/RSys2/c6Rh2ImkZPBNSCIh4xbihF6or5I+pfpaxRG
 WsC1Ex7XBMxMJSJgRXrTOReCraAL3dG1Z7Ey/
X-Google-Smtp-Source: AGHT+IG4hCE+IdcT7gDI6Y/FY4GnDriutfuUfIR5SNfXBdFrj25/eWOpBz8eI1y/JTwOMLKAIgdhrw==
X-Received: by 2002:a05:6870:e311:b0:2ff:8ee5:d1f7 with SMTP id
 586e51a60fabf-30c21080f92mr1906932fac.1.1754664489207; 
 Fri, 08 Aug 2025 07:48:09 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:e698:accb:897b:ca29])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-30c3a9d052asm123722fac.14.2025.08.08.07.48.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Aug 2025 07:48:08 -0700 (PDT)
Date: Fri, 8 Aug 2025 09:48:03 -0500
From: Corey Minyard <corey@minyard.net>
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Message-ID: <aJYOI8BzUSeMiuJm@mail.minyard.net>
References: <20250807132852.3291305-1-robh@kernel.org>
 <a14b98078554e27453fc1f96a667b299a15fd4c2.camel@codeconstruct.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a14b98078554e27453fc1f96a667b299a15fd4c2.camel@codeconstruct.com.au>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 08, 2025 at 11:17:29AM +0930,
 Andrew Jeffery wrote:
 > On Thu, 2025-08-07 at 08:28 -0500, Rob Herring (Arm) wrote: > > The ASpeed
 kcs-bmc nodes have a "clocks" property which isn't > > docu [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.41 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ukOOK-0000nC-0Q
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: ipmi: aspeed,
 ast2400-kcs-bmc: Add missing "clocks" property
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
Cc: "Rob Herring \(Arm\)" <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Aug 08, 2025 at 11:17:29AM +0930, Andrew Jeffery wrote:
> On Thu, 2025-08-07 at 08:28 -0500, Rob Herring (Arm) wrote:
> > The ASpeed kcs-bmc nodes have a "clocks" property which isn't
> > documented. It looks like all the LPC child devices have the same clock
> > source and some of the drivers manage their clock. Perhaps it is the
> > parent device that should have the clock, but it's too late for that.
> > 
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> 
> Thanks Rob.
> 
> Acked-by: Andrew Jeffery <andrew@codeconstruct.com.au>

Queued for 4.18, I'll add it to the next tree when 4.17-rc1 releases.

Thanks,

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
