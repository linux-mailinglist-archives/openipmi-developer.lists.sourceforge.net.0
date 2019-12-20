Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 338131271F6
	for <lists+openipmi-developer@lfdr.de>; Fri, 20 Dec 2019 01:01:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ii5jC-0002Ti-UT; Fri, 20 Dec 2019 00:01:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robherring2@gmail.com>) id 1ii5jB-0002TY-K1
 for openipmi-developer@lists.sourceforge.net; Fri, 20 Dec 2019 00:01:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ixxxBsIzEckZyMKz6FP9blKKJXoRngv5HsAGvReLZD4=; b=l8hMR0rKHMnHgQ0WicWUR5H7VC
 b3NQAsi1DZ7LiA+N0zYm+ry80w1KJDcOs3JjXTacmkKI3coAmb6gn4tLgZORkVVke0Bo+jJ2SUPl9
 6arYqE061jtQYSUAIFTNG9nto905XpdZY0PMcXQgRKqYirjAB8ezhLmCsf+ozKLjYG7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ixxxBsIzEckZyMKz6FP9blKKJXoRngv5HsAGvReLZD4=; b=Pg24NWOR/v9V0bAdevGrTejVlr
 l+Q2+NN4nAgq4YoE9GkiBHfROVuR17+DvAolA3T6qnqyYX3u0tR83lVHDb2zR7ymfxMs67h9WIAt7
 b3aKFRcioXYjEIsI6K0GrTyV1RdJrPpRgDRijuUUCQeGCXvlCobURzm5hujz1qBAI1rg=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ii5jA-00ATnA-EL
 for openipmi-developer@lists.sourceforge.net; Fri, 20 Dec 2019 00:01:09 +0000
Received: by mail-ot1-f66.google.com with SMTP id k16so4836914otb.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 19 Dec 2019 16:01:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ixxxBsIzEckZyMKz6FP9blKKJXoRngv5HsAGvReLZD4=;
 b=N5DK5UJ2Nv5m5u/92rMzjuxCEhzAtaS/X6DFrSjwdtu1442txXt5SIwk9WXYcrmZn6
 +Iycxm58YwuX005YkaxrWDGXxyBlAtD/iZYph4+7kE1zo7sqgo9VTzcK5Yz2yjTpYTjG
 Rrxw+Ecu2IEH0qJPRMtNOsGgWxrEyC0K7U+xd+dLO+MGAf565EbWjG9MrGHKvu9my0UR
 slJuWvl7LYWsMX7kJPCaKekg+I9DFcNtlMdSxBfXR3d4uGKLBDbb+F6sVDlSG4F8S6yz
 y3hKYbCNFvuafLF17BwG2wRWnwCaHf4THoZGhF/qborKSZp537mN1YCLBV02Nou68VXy
 +W+w==
X-Gm-Message-State: APjAAAVURzVsRZFvj+KZdkG1r4Uf7r+lpjnnkaYuZx4mHjxqLDuua8WY
 7OanAttUJfx07bM2dNV8mQ==
X-Google-Smtp-Source: APXvYqzEJwtRPN0UXZ/xR2ptdwnUmxXBKOPtOTRVoyqaKCSz+7WnsyzpWFMgdicP0Vvzr157+uUKXg==
X-Received: by 2002:a9d:6a5a:: with SMTP id h26mr11893681otn.103.1576800062626; 
 Thu, 19 Dec 2019 16:01:02 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id l128sm2541590oif.55.2019.12.19.16.01.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 16:01:02 -0800 (PST)
Date: Thu, 19 Dec 2019 18:01:01 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20191220000101.GA16104@bogus>
References: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
 <8aec8994bbe1186d257b0a712e13cf914c5ebe35.1576462051.git-series.andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8aec8994bbe1186d257b0a712e13cf914c5ebe35.1576462051.git-series.andrew@aj.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ii5jA-00ATnA-EL
Subject: Re: [Openipmi-developer] [PATCH v2 1/3] dt-bindings: ipmi: aspeed:
 Introduce a v2 binding for KCS
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, minyard@acm.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org,
 openipmi-developer@lists.sourceforge.net, haiyue.wang@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 16 Dec 2019 12:57:40 +1030, Andrew Jeffery wrote:
> The v2 binding utilises reg and renames some of the v1 properties.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
> v2: Rename slave-reg to aspeed,lpc-io-reg
> 
> Rob: After our discussion about the name of 'slave-reg' on v1 I've thought
> about it some more and have landed on aspeed,lpc-io-reg. In v1 I argued that
> the name should be generic and you suggested that if so it should go in a
> generic binding document - I've thought about this some more and concluded that
> it was hard to pin down exactly where it should be documented if it were
> generic (the generic ASPEED LPC binding is one place, but that would suggest
> that the property is still ASPEED-specific; maybe some discussion with
> Nuvoton might give some insight).
> 
> Regardless, it turns out that the address specification is really
> ASPEED-specific in this case: The KCS host interface in the LPC IO space
> consists of a data and status register, but the slave controller infers the
> address of the second from the address of the first and thus only the address
> of the first can be programmed on the BMC-side. ASPEED supply documentation
> that maps the LPC-side register layout for given LPC IO base addresses. I think
> this is esoteric enough to warrant the aspeed prefix.
> 
>  Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt | 20 +++++---
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
