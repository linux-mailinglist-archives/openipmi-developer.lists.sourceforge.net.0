Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJwkNr/GeGmltAEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:07:59 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5F195578
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:07:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A1yvRSxn2tSQ8rbxTWlLcpyyNU2oyBlBYY/pQh5ZHI4=; b=JRA2nKnF992iXgh1/DcsOmq/bD
	2X7SoP4D9xuUWLICDgkwNitcCXaGE5oR+vNQ7FLs6zKnVEp/BkaK1j/CL+SIISJjHk8BoVHhblwUq
	89j5ymk1/h2hqYhk3f+xKzPgij59CdCEGTMyI0FWqS8thRx5FTyL3AsKtNSTgMXh9yAs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vkjjU-0003Wl-0I;
	Tue, 27 Jan 2026 14:07:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vkjjS-0003Un-OX
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:07:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SgaSJG2JDBJWo7rSVGWXUpnG8BKa/5wc97GnXzAZusQ=; b=QUjjvj99clE0YTkusUPRJBklzN
 t0BoE1+hka3mr6Mt+Si2MC6ITvbufGChjQuUtzO9ieX/Q7GGn3g2ccSJGPSvfaG/PIg8FoVwZvKzn
 /wIvS58F+kDgXBGajM0i4toL2/hCZmIWnC9NSQKlfAERx/rpMznfcM3u3nABgGfEiWYE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SgaSJG2JDBJWo7rSVGWXUpnG8BKa/5wc97GnXzAZusQ=; b=kGnS2pC/Oc3yv6h+yfhnYWkTYs
 Qnm9FL9qeR4ntR0zWDBiQstddCvQwsqoE0k+eShZxPBVJM5VhcSwUQoYU02EFNSqT0ocGKOBPWTx7
 Dr2DyMQ08JQvSSX49+sFM/azpuYItrf/4wrstTvhLAg5nSrtxsNcMbIacSiT+kVxArhc=;
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vkjjD-0005nX-1t for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:07:35 +0000
Received: by mail-qk1-f178.google.com with SMTP id
 af79cd13be357-8c6ac42b91eso686157885a.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Jan 2026 06:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1769522849; x=1770127649; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SgaSJG2JDBJWo7rSVGWXUpnG8BKa/5wc97GnXzAZusQ=;
 b=l8IyEo6QrK/4a8f3zcxf0pjprUHQhva2c7thfW84yD8KZ+WgfFpWSrVt0JyAgcY3pD
 HMPdxxm+/BvgYHZCEs1C14Cot02jYWmulPfEEfoprtagwMs7PbKSOEVmTE2tXEutlhmM
 KTq6/1Lgjkbhnga8SDibz3JblzWWhFKWDYMtg3yb8KtjMVlUTgNAjEPz0P8Sc3ot6PaN
 ROqkiLcvva0eVcwX8/0rB9n77wEj0d1LzepjUDwY8CH7j49G3FV1NWtL6Mke1aIoUDXw
 BkQoMtM7UkEBOGsb2kb4fRAHtjbOv8G47V/cViMUazXxHfO5bwLAX6YwQXwp+vs67c4D
 8dNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769522849; x=1770127649;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=SgaSJG2JDBJWo7rSVGWXUpnG8BKa/5wc97GnXzAZusQ=;
 b=ecH8XHQlQ8W8f066U2ZDLM3RaVx3pO1eaJ0XXjFlOQLgqv+TY/DwwpDQHz7gT7KfYI
 LRZIltaHT5D4O5YlP1uL6BEfX1eksko7K49JqywfGaUbgD95eDFau/XXJwUwq99OPddV
 ZEfUmIJxeM+IQfw2/MkC3w1N9QKYTgJl6DdWRfMRttCWu1vXPGpTMJE/iz7SmX+QxMSr
 hRsB945hD5rWbbKeLWCcCDhyGPedb113o5tEp4BZA6pvNpLUAXW0HgFTDgr0lPBQ7ETZ
 khf7+NdDNuztEC/uK9a++6P+INMZboh2VM2nopH/KulmcBlXbNmaesZLGYQ7H168Ydwh
 CYWg==
X-Gm-Message-State: AOJu0YwWbvpl6TyGXL03PT68TryvFhoof7f7A47sYEEpnh2g22WAOi+t
 RgutOhoKakV1uxN1dI3valE6153YIEMboi3kigRXl6bkCgMNRhzUMZhsYuGBGiAuHB0ggYCfWaV
 OKWoqAWY=
X-Gm-Gg: AZuq6aI6G7gt7Co4KSdixT6oC50j16DdlCo8aIDkYQ7ve4Pnv7+OKJ0zBXsFInQdH/t
 1KEKbaLDIOvbwqCfFUZLiRrEJ9ni5l2BcXQzDF0D507Fh8AAmYoOFOOArnKUPO2vfKeHio9gB9Q
 f5ypY26CkEPABLf9Khm2brmAhbT5M7MkGtpq951mzp0EySD6TRc7MXmE349r7DMEYQZ148nksiz
 tFSCM4wOf21jUGdG/X0ZYu3ipOhM5zE9H6dGDeOvVTaufO0At+0hPl2mLJUKS6ui2ve51M5wFO0
 3dLwXQg0sDu1K4I2mu+uSKbLVPoxrbd2MKcOcO1k3MUoItT5kXlnzzhXEEsRVrHQW6+UVi+Ogdt
 frz6zHagMrBrBscLGf3Llntp2gDu8YbpvpxoZbWmiJYewJMFDBV78PlDI/EibIlWyyDhxo1bCYu
 Y4aXIjMhkWj8sj8nLk/nF0Jh/nqmdUQRbMnRMOBN09XOywiO0CR/HnuYb7bgfW/gpnyw==
X-Received: by 2002:a05:6830:81eb:b0:7cf:d187:f278 with SMTP id
 46e09a7af769-7d1850ca2dcmr1247675a34.17.1769522364059; 
 Tue, 27 Jan 2026 05:59:24 -0800 (PST)
Received: from localhost ([2001:470:b8f6:1b:a1a5:d807:e7a1:53eb])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-7d15b3d3340sm10034350a34.23.2026.01.27.05.59.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Jan 2026 05:59:23 -0800 (PST)
From: Corey Minyard <corey@minyard.net>
To: Breno Leitao <leitao@debian.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
Date: Tue, 27 Jan 2026 07:54:38 -0600
Message-ID: <20260127135917.1597762-1-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
References: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Fix a bug in error handling in the IPMI driver, reported by
 Breno Leitao. Also move the xmit_msgs_lock lock to a function and move the
 run to completion check there so the if check isn't on every one, making
 things hard to read. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.178 listed in wl.mailspike.net]
X-Headers-End: 1vkjjD-0005nX-1t
Subject: [Openipmi-developer] (no subject)
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
Cc: kernel-team@meta.com, openipmi-developer@lists.sourceforge.net,
 llvm@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:leitao@debian.org,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:kernel-team@meta.com,m:openipmi-developer@lists.sourceforge.net,m:llvm@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[debian.org,kernel.org,gmail.com,google.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer,lkml];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:mid]
X-Rspamd-Queue-Id: 2E5F195578
X-Rspamd-Action: no action

Fix a bug in error handling in the IPMI driver, reported by Breno
Leitao.

Also move the xmit_msgs_lock lock to a function and move the run to
completion check there so the if check isn't on every one, making
things hard to read.

Passes the IPMI test suite.  Adding a test for this would be very
difficult, unfortunately.

Thanks Breno and others who obviously worked on this.

-corey



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
