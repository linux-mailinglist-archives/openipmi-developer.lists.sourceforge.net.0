Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2beZBqOwNmqjDQcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sat, 20 Jun 2026 17:24:19 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C386A91C7
	for <lists+openipmi-developer@lfdr.de>; Sat, 20 Jun 2026 17:24:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=P+HJyXTQ;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=hZ0tas0k;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=dn40l13s;
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=IJj+gGH1;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=87RGy3bENihbAbhBNotLhy6e92OZbjYsuUEMxvTvDbU=; b=P+HJyXTQVhqUMPEr4C0GT4bHDi
	eoOnFkeW4AgQRp0Q4SedBY3ICrl+uotVwqJtNLdQ4ASmGCWLaDFj3dVc3MXkO+dR9OB9RVa97ffxW
	P37AoQPHPCmYJ0pJIpQ8jQbzqKu7EV4/x+qzCei+GiaJKI+nCl/mbMJZdyTP+yERtUK8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1waxYB-0007py-3M;
	Sat, 20 Jun 2026 15:24:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1waxYA-0007ps-GF
 for openipmi-developer@lists.sourceforge.net;
 Sat, 20 Jun 2026 15:24:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QfozMZ4MckZ6z82xnad27KmIs/kPPZXqPb4RdkxOOME=; b=hZ0tas0kmv3Rq8TdyUXMwa90MM
 XRxYnYH1O8gb6u23MT6dzr8I6imIBHofG6JU9MDjrjNkP4my1vp73sURgTMTVns8LLwI57Es/nW+f
 WGXUVjmpA+aRkj4ItW+YfntisUF+9NIcpnULKwZ6gjFEboOgEQm9iF08/Ys3zX2K0C84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QfozMZ4MckZ6z82xnad27KmIs/kPPZXqPb4RdkxOOME=; b=dn40l13s+dq1L885gVLzKhkNgr
 dIIe7cGLAuN0Z8aT1ab72zKQvsY+jqiW1Lm8k6o4/7/R/3No0P/ZgXFbceuwOkO5i+HT11pm6bYcs
 vX2uuyNdwv7l/8ju7wrE+GsXGu1OKUtODXQyFm783BCgmQ4C2RAyQWkZm2t/xsk67upU=;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1waxY6-0007cG-Vz for openipmi-developer@lists.sourceforge.net;
 Sat, 20 Jun 2026 15:23:59 +0000
Received: by mail-oi1-f175.google.com with SMTP id
 5614622812f47-48bec0abe6aso44609b6e.3
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 20 Jun 2026 08:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1781969029; x=1782573829; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QfozMZ4MckZ6z82xnad27KmIs/kPPZXqPb4RdkxOOME=;
 b=IJj+gGH17v2oXR2J2nnLpkGM5lWrx7IY3RBOCxw58y4MnjBtH9vk0RD/2uOxsDWPWD
 ZJTUR96/S2ZAx46nBO6rX1hrXp8BbdQEt0ywavoQOQMWfEKkiEiKfA2VUOHCzdIVB6G2
 sbFPa8XismHIqXq+KP6Yc49UorLLQ4hPBJqwMBuPZ0P4fKlYbmOBdmePCFXfvr306h7o
 1NpY7h6t7mn+X2HxjWR9EUy1pJsCiPEuN+df4W5PuPtDchLOT01v3ZdjQl2W6Umav7vO
 z66Y1InClQVG9imQwIEw0KD5nsJycyNSuLy3/OZXpYVmuKcMMTnd/HQcTlYajeBT5Fde
 Ex0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781969029; x=1782573829;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=QfozMZ4MckZ6z82xnad27KmIs/kPPZXqPb4RdkxOOME=;
 b=fHsUl3IRsShjBdJWtMOKf5CGDETTf91dDRRmL9qYn15gtMujegsYyzBPF9RQRL9WQy
 5r28qwwGSOICI/tqd+EH3xC9mvmwlH+zsPk6Oe0NDa2RO+cARXt2hYs9DeiD/fwMJqeT
 X1VWb+yNjMOo1gjTuKvycVdukKlkVS1y+C8e+K+RXSTFt8XDAtCFTvwYhfulLRTJtpni
 iROqmVtyYpSByXOSAFDlYHC5wmcqFPQN3gh3p/FLDG+bi1lTg5YMEWfujS5wqrmL8r3U
 EHiG2lX43apTRi/txpixL8H4QNjwca5OR82cn/ch3V0kU5FMhrVKpkNBNTeYji8OQ15w
 ntGA==
X-Gm-Message-State: AOJu0Yw1lYqY9IXxW+y9ZfpPczhMLxi0511uEJZVVS2aFJIjbPbtGJd6
 cOGnJ1TdcLYSfAGY/8fd50GocbePhRDYs3raRDc8F+hQzq9ilKhhqvtuZ1DwYeLkEB8=
X-Gm-Gg: AfdE7clozY/egmxnt/Mvem7ib5sliVUZrGzvql4ofZEe5LneygeBWTbYuc1NmPOIj2A
 yvgcd8EJNmX3yyEm2PbM7hvr+sNuCwcAcxPKXIn6JG6t78XysGeGB2Nz+qbx93NXMkvm6ycp7CE
 iumHpoOz82inK8N24K9manirEhGdutBFkMbjmLeDw/WFny90oAN+CNiix7yhKXP7rwzESXxiR/O
 WRPq/qGRHJqdzsPx+aEnuyOHlT7VhFUPxhslQjSIp6FNqlAndUBmUuOB8nw+yeaWNMt/46cBIu+
 50xCQZddc254dN3dW0CaFm8sYxKmhuKt4Fn1fNvUW5XZ0Z1C2y0K7coZtjp69J90V8ma3yDHI67
 uFVDSotkAA2HiYrGryAKa5mGAQPVkfsw86QhwoHHTmyR2c1hEFi+JDe5yrYkwpgrpz0C35ksGMS
 UY8d2UjRG0cUeLHXU9GbIGLLc5Aptaz4UxDEoOCyzGvBGryQkm0h5IXfZGkYH+HyIXMQREjcxYD
 dt/ww==
X-Received: by 2002:a05:6808:3508:b0:48a:b4ad:9dc4 with SMTP id
 5614622812f47-48ab4adb250mr3459662b6e.10.1781969028772; 
 Sat, 20 Jun 2026 08:23:48 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:c99d:af19:3e7e:706c])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-48ae8b3b1efsm1392657b6e.0.2026.06.20.08.23.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2026 08:23:46 -0700 (PDT)
Date: Sat, 20 Jun 2026 10:23:42 -0500
From: Corey Minyard <corey@minyard.net>
To: Zenghui Yu <zenghui.yu@linux.dev>
Message-ID: <ajawfhU5nCR93DL_@mail.minyard.net>
References: <20260620122747.7902-1-zenghui.yu@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260620122747.7902-1-zenghui.yu@linux.dev>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 20, 2026 at 08:27:47PM +0800, Zenghui Yu wrote:
 > The correct path of the "hotmod" module parameter should be >
 /sys/module/ipmi_si/parameters/hotmod.
 Fix it. Thanks, it's in my queue. -corey 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.175 listed in wl.mailspike.net]
X-Headers-End: 1waxY6-0007cG-Vz
Subject: Re: [Openipmi-developer] [PATCH] docs: ipmi: Fix path of the
 "hotmod" module parameter
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
Cc: openipmi-developer@lists.sourceforge.net, corbet@lwn.net,
 skhan@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zenghui.yu@linux.dev,m:openipmi-developer@lists.sourceforge.net,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,mail.minyard.net:mid,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 29C386A91C7

On Sat, Jun 20, 2026 at 08:27:47PM +0800, Zenghui Yu wrote:
> The correct path of the "hotmod" module parameter should be
> /sys/module/ipmi_si/parameters/hotmod. Fix it.

Thanks, it's in my queue.

-corey

> 
> Signed-off-by: Zenghui Yu <zenghui.yu@linux.dev>
> ---
>  Documentation/driver-api/ipmi.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/driver-api/ipmi.rst b/Documentation/driver-api/ipmi.rst
> index f52ab2df2569..d08cee98e34a 100644
> --- a/Documentation/driver-api/ipmi.rst
> +++ b/Documentation/driver-api/ipmi.rst
> @@ -495,7 +495,7 @@ tuned to the user's desired performance.
>  
>  The driver supports a hot add and remove of interfaces.  This way,
>  interfaces can be added or removed after the kernel is up and running.
> -This is done using /sys/modules/ipmi_si/parameters/hotmod, which is a
> +This is done using /sys/module/ipmi_si/parameters/hotmod, which is a
>  write-only parameter.  You write a string to this interface.  The string
>  has the format::
>  
> -- 
> 2.53.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
