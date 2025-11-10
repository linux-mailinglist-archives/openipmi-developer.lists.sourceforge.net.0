Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC4EC49C86
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 00:38:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IYHcVJI3YarCQUAuLMzrHYbTfAbRcnLf/j+sYBsQZ4M=; b=JGy768Uplw9J50uYVza3LOtfl8
	75UxGex5sa1aQtMANbGgwp5S8qLJEpRzeuoW/ZzvcmrcGpEhFvaaQP8hLIufFm42Dbquo9uG6iN0W
	X4Wl9kNgRbxoQcsVZFkOswUMdJ6st2RI0DdJjlJvVUxxCShUdaIEe+HN5wIkSi0TSRz8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIbTB-0007Yt-OL;
	Mon, 10 Nov 2025 23:38:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bagasdotme@gmail.com>) id 1vIbTA-0007Yl-4k
 for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 23:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1BkOzUxSSedtqRPqjCFUt6WI3IiHiKYSTgbLQupojII=; b=N/sFL7buXB47gjEinoxZ26Z0V4
 5mK8Wajlih7TxDTV45ArUIRhICdsjqPWz+xBVpy7P4Ko/QQXbUZLx+FNqm3/qn3AP0tcHjSrAbDgc
 9DcXDsH+zFYVo67te+p8bLG7rTJIRNbQp7shTv7G7cssevd4c0qxMch0s+mtT+yuYOAc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1BkOzUxSSedtqRPqjCFUt6WI3IiHiKYSTgbLQupojII=; b=HA0P8IAdbWnGqf+lv3PK6KoXzc
 5/fhYdb98WUQmrLjaESO6oWuLjTj5P6P0AMIr5kBpkRsCgwHacr8XroLrlTOUpQhKdynf7v5PTb8k
 3b28mrx0CJ8nKfKImL2juEq1PILAB4Y+Jrm4nIeZ8VSAdue3kBjlTZGvrPNHndZxHXOs=;
Received: from mail-pl1-f181.google.com ([209.85.214.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vIbT9-0007tu-Qc for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Nov 2025 23:38:44 +0000
Received: by mail-pl1-f181.google.com with SMTP id
 d9443c01a7336-29808a9a96aso17632745ad.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 10 Nov 2025 15:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762817918; x=1763422718; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1BkOzUxSSedtqRPqjCFUt6WI3IiHiKYSTgbLQupojII=;
 b=Qq9QEZgYIwG+CHwl1E/l6P7W3KhvlTgOPUBwAS1tmKxW7Ot+FkIhzK9j9vpTF8pPnN
 NOKyufzpmp0X5thaAuavfkrvwS+4Cpe1+KniXlThNLLohwwUbjDTSmSXKxAiXD9ezu9g
 TUzEdBDEsDPR7UkNlw4PwKZINWrk3hUB8M7dhT2LBDah9qkVV/Hutz1HNc4bSVSgOCLH
 F+Q80+yCAD8STcHXYlERdx1wvn2+KzfKoI8qo0N5ovSGv8C7e5eggX1ZvAtj39ljnIXc
 7HdWk1dLGwl4GeOaJKj1yQHre++G2IsVwylGoRAJRjSfqFal/ceQssNi7lti1QWU/Ty/
 p5Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762817918; x=1763422718;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=1BkOzUxSSedtqRPqjCFUt6WI3IiHiKYSTgbLQupojII=;
 b=GSDIZwZXQPKVLIzZvKt7XYbfl1HW5N+RjuZ5GRtH9Ortmpa4TiJzZPRYkowYvod/dS
 6DQHm4ghTxekw6mDeXAJATWgik5Ulk9/lZgG6hnzdDILqAvfuDYyPTVimT3xUO1Zjzjd
 tTH3BlxTSKD4nYoxRft29mqXERYU4GaFy39YW2xbc3Z8vzgcVcw3ggL98yKvYdwG6nw/
 IrGguWAV4I7yB7mKKeZdKuPJgWG+KZDud1d1gi6GmPdYeGMWWHDMukRyaxqM31fiPXWo
 RMDnO3wR+83uUOtD9IDlHi+gGmeZeDCMErEuSul7BQsQj3ZSRuhEeidFXzZsYftcEUJW
 MsQA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXapPSM7g0UqjEPCyn5RLt5dKsMDodXpgzvpIis10qbvuDhwPbKan5ps8l+dRh9X/vKnZmjxIFc7YB3OKO987W/WKg=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzpYvq97KFVs6adcd1QbsjcoOLPpnkTRaQeIGCK3yfKG0WV58fa
 XIGC5R25FgNJJ4SZvWDXEjIrSBUt9gzI7Ftu10vGUgm3jiI7o16MdEfz
X-Gm-Gg: ASbGncuZK7aMlW+p7b7V4/XynlpbRAnXSQhei78ATBrtGR3LrgqauDH7xIG5+OSBFGa
 MKeEAIWABS4ZS/RWAdxw991yPuSRqE5f/4n9vKZFtodxk8jxHGL5CbICYk+i6XGqyg/FJM8rfzX
 yqoLhOyxTw4DJEcGHYQHfF4uwoqr0QKKOWP4rMvKz3gfwqJG5Uz3VG278ZFcyLaF0DQOGsfLlSV
 L+GTQwzkNGdRJv5WNGg87n6TseY9wX5joJzvMJdFNj0TN7NxYPACKoJMqHlOQh9yzikDwxghVSe
 LU9O/VBJIqwVAdiXBWS1FyMoYuI9F06KeaUpJvYXI9edETDy43Mx9sj5yxR9L++EshN+RO//FN0
 GlHB0g1c7sZLI0fHFW8nwi70qEQs/ripyj4IJUGmVHnEyx9U82yc3fB02dtVY9VCKLNLSpbfzIc
 +w
X-Google-Smtp-Source: AGHT+IEi4+N5BDziRzYZppfNwadzwEcVAGlfkTK26ZrdelRRWzwfF3onPDRQ6fnIWoeut03gtLxsdA==
X-Received: by 2002:a17:903:3387:b0:295:4d97:84fc with SMTP id
 d9443c01a7336-297e56be1eamr90395435ad.32.1762817918122; 
 Mon, 10 Nov 2025 15:38:38 -0800 (PST)
Received: from archie.me ([210.87.74.117]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-297f2d9c971sm78403165ad.55.2025.11.10.15.38.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Nov 2025 15:38:36 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
 id 7C0B741D950E; Tue, 11 Nov 2025 06:38:34 +0700 (WIB)
Date: Tue, 11 Nov 2025 06:38:34 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Documentation <linux-doc@vger.kernel.org>,
 openipmi-developer@lists.sourceforge.net
Message-ID: <aRJ3ehfBJRWrWXzm@archie.me>
References: <20251105125449.45643-1-bagasdotme@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251105125449.45643-1-bagasdotme@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 05, 2025 at 07:54:49PM +0700,
 Bagas Sanjaya wrote:
 > Steps for loading IPMB driver at boot time, written as enumerated > sublist, 
 is indented instead on the same level as its parent list. [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.214.181 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [bagasdotme(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.181 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vIbT9-0007tu-Qc
Subject: Re: [Openipmi-developer] [PATCH] Documentation: ipmb: Indent boot
 time loading steps
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
Cc: Corey Minyard <corey@minyard.net>, Randy Dunlap <rdunlap@infradead.org>,
 Jonathan Corbet <corbet@lwn.net>
Content-Type: multipart/mixed; boundary="===============8340556248756237742=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============8340556248756237742==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Mv2ump0qL64iQ07O"
Content-Disposition: inline


--Mv2ump0qL64iQ07O
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Nov 05, 2025 at 07:54:49PM +0700, Bagas Sanjaya wrote:
> Steps for loading IPMB driver at boot time, written as enumerated
> sublist, is indented instead on the same level as its parent list.
> Indent them as appropriate.

review ping

--Mv2ump0qL64iQ07O
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCaRJ3dAAKCRD2uYlJVVFO
ozgtAP9FBSCB6sCH2m2OzgdgvYFnDNhf4q8lD0YGD0CZMa798AD+Oa5ZvTB46NoN
+wJXKtedF9+doRDFvq87lIIDuxXTsAM=
=iucy
-----END PGP SIGNATURE-----

--Mv2ump0qL64iQ07O--


--===============8340556248756237742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8340556248756237742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8340556248756237742==--

