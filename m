Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EF0961043
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Aug 2024 17:07:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sixmb-0001ht-8V;
	Tue, 27 Aug 2024 15:06:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pcahyna@redhat.com>) id 1sixma-0001hk-5W
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Aug 2024 15:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/f90Q/A5/UMJ/pUsBQBXF7OcAlgBuD7kI+krZS7sm6k=; b=UAtpGOrYVBl23xVUOJW+5hq6WI
 38rXyZJDFBOjpN1ZugbZuLDpM2vOBppKlRA1AyoQ7oEpeSkUknDo/DhwAEkPu4H9m9kov9FllYZO6
 qoicNl+4g+HS11QHybsiMizNNQQJ0P3wT61vYYnpSAZR+z8iu0Pt4tnMyFG+2fulQ/dU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/f90Q/A5/UMJ/pUsBQBXF7OcAlgBuD7kI+krZS7sm6k=; b=Itum4RrLG/saYgPrtQzL71fD0R
 vsBNfaOz3SxhKJWSYKv9ono7VpFNEraY8Y22ag81TWLdvdxsmV3rc2h7IMpavUedlKV1LmKC9HfM8
 VdhGEyMBAhsI7yteSmP0RPpYFxDGU86NvqtTmtmFb/43PWXSdDGtSrL+V3KZviIDSA24=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sixmZ-00081F-Eq for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Aug 2024 15:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1724771204;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/f90Q/A5/UMJ/pUsBQBXF7OcAlgBuD7kI+krZS7sm6k=;
 b=AqBKSJsnm9t6Vz60fceGsSAsTGLeKfCuuivTUvTbCv7A3MyWTY+30MfHxcombHRmX2+FNi
 OR7haWEg8FXPXnoph7nGaK/lDIX6sAlfKBeVN43bw1SgXcuRItvJf3cstDe3ATlmceUzSQ
 HguQ0lGm0CaK602BIof7YxADPOAxZjw=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-648-j6TgDRZXOLyVB4I9_OD2KA-1; Tue, 27 Aug 2024 11:06:43 -0400
X-MC-Unique: j6TgDRZXOLyVB4I9_OD2KA-1
Received: by mail-lf1-f71.google.com with SMTP id
 2adb3069b0e04-5334448595aso138713e87.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Aug 2024 08:06:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724771201; x=1725376001;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/f90Q/A5/UMJ/pUsBQBXF7OcAlgBuD7kI+krZS7sm6k=;
 b=aiThAPIt7ne2rwYk25GAUTT26EtWqm4L9jIkgafgf6cbRUpQQd3JqGgh4yuClKv4cc
 sOvX/kw01NJz+yczr420+542sRoKaS3SS4jmlJZ5KFWTAgxoNThLHKWQLT8kC9YDNHnU
 SmZyrwmOpnlfzQ4/pc7mkM61CNEIykrRTjyw2JQmPbdSeCGMgyBe+IW9CXigzxxTRHFb
 cAStN67rKrBnUeRdwgVA1xJ4dwWUX3BSWxXQx7NlHZ0vpEJUu2GhlX8y766XOfY1ZcG4
 76SeGaPNb1Zof8AaYnfBAi0JZsVQsAcAM5kMlu6EmHU4avyVEmnDkFGRr0U+qa5F878H
 CEFw==
X-Gm-Message-State: AOJu0YyUFlVqSEP2Ek8boCBfshxp2E2JVNlKO+K/iWp3+teOxVKK2n/X
 SOu8WfMouGvPB6BJZ6IDL0Ey1nSf6khLN7mcfi3FX71rnu6SwSyFyjCGEzzWICLVCpHVfHDuR0j
 9OlwKiLmnhmDbE+/I8Teqhuc4is05W/PDlaiTMlFydvxAktR8KyGLsK+LG/gFwMhidxz+Bae0Mx
 y7kyixPL4FHQKeP0eIr7W3ly0UiJUvD6psgxuGKzBwhXPJl3BuRd7ylR/VODo=
X-Received: by 2002:a2e:a98d:0:b0:2ef:2b6e:f8c2 with SMTP id
 38308e7fff4ca-2f4f493ee11mr52507741fa.6.1724771201354; 
 Tue, 27 Aug 2024 08:06:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpxM1bW0CYPsosgPSvBOGn0Z9VJetx8X2QizMzTGDI5aG9TYd1neiObnY7+M8kwQ+/xDO0Ww==
X-Received: by 2002:a2e:a98d:0:b0:2ef:2b6e:f8c2 with SMTP id
 38308e7fff4ca-2f4f493ee11mr52507561fa.6.1724771200663; 
 Tue, 27 Aug 2024 08:06:40 -0700 (PDT)
Received: from redhat.com (225.146.230.94.awnet.cz. [94.230.146.225])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42ac516251fsm185973665e9.25.2024.08.27.08.06.40
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2024 08:06:40 -0700 (PDT)
Date: Tue, 27 Aug 2024 17:06:37 +0200
From: Pavel Cahyna  <pcahyna@redhat.com>
To: openipmi-developer@lists.sourceforge.net
Message-ID: <Zs3rfSUTQVyAkKPA@redhat.com>
References: <ZsdnOv9F0g2hkslJ@mail.minyard.net>
MIME-Version: 1.0
In-Reply-To: <ZsdnOv9F0g2hkslJ@mail.minyard.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Corey, On Thu, Aug 22, 2024 at 11:28:42AM -0500, Corey
 Minyard via Openipmi-developer wrote: > There was a bug found by AWS Security
 that affected the IPMI simulator, > ipmi_sim. It does NOT affect the main
 [...] Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sixmZ-00081F-Eq
Subject: Re: [Openipmi-developer] CVE-2024-42934 for OpenIPMI
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello Corey,

On Thu, Aug 22, 2024 at 11:28:42AM -0500, Corey Minyard via Openipmi-developer wrote:
> There was a bug found by AWS Security that affected the IPMI simulator,
> ipmi_sim. It does NOT affect the main library, just the simulator. This
> is mainly used for testing (by OpenIPMI and others) but I am fairly sure
> that some people are using this in production systems to control QEMU
> systems and to provide serial over LAN access to those systems.
> Unfortunately, I do not know who is using it for this purpose.

reading the code, is my understanding correct that it affects not just
the ipmi_sim simulator, but also the ipmilan daemon? The manual page
describes it as 
"The  ipmilan  daemon allows an IPMI system interface using the OpenIPMI
device driver to be accessed using the IPMI 1.5 or 2.0 LAN protocol."
which sounds like something that might be used on production systems,
but I also don't know how often that would actually happen (using such a
daemon seems to defeat the purpose of the IPMI LAN interface which is to
control the system even when offline).

Best regards, Pavel



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
