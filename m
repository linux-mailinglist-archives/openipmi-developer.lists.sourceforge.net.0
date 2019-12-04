Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C09911369F
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 Dec 2019 21:42:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1icbU4-0000DR-0t; Wed, 04 Dec 2019 20:42:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1icbU1-0000DE-5r
 for openipmi-developer@lists.sourceforge.net; Wed, 04 Dec 2019 20:42:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/hHkj9ASCDSnWOl6HZMV6rVdEXPs9BdxQNbz1Iorwqk=; b=LF0gpXkU6vVL9PkdokV7KkshR8
 pk4NjB9Ewjs3IFm/6z08xYsM4euNoLXwmfa7xsUTHaiBo1mhQsSthtsos1w2HHa4H5CE2gtQh/d89
 GYm+q8Sm9R2KD6ZDNqNRQvAn06ihfSvXtsxSf/tVoa1whgTM+oqZaxJb/rd6BB5LdnT8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/hHkj9ASCDSnWOl6HZMV6rVdEXPs9BdxQNbz1Iorwqk=; b=kQfWF2hS4MeBHIE4nhswDYZfwW
 nLZA/olwXKCF40Xxign8Wfiq2g78yIONjJ8Qb+qYBJG/wVrV3JH1GVbSLk45evE0ntFfr/bWDdN12
 5GmzbfNOMyo0jkKH0xOu6m+rjXAReHKsEH48r6WeaIT2LY1uSeYxioKWKXnWObzYHGYk=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1icbTz-0070xK-TY
 for openipmi-developer@lists.sourceforge.net; Wed, 04 Dec 2019 20:42:49 +0000
Received: by mail-oi1-f195.google.com with SMTP id 6so544495oix.7
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 04 Dec 2019 12:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/hHkj9ASCDSnWOl6HZMV6rVdEXPs9BdxQNbz1Iorwqk=;
 b=qHymJi+jnNmxzzYLNc3pHMabSAwmYgNMgpMBWWtTFi59IdiG1GdLoB4Pa8R2X2wE96
 mTtx4m9Bd5Wc7H65F8CFAMJk9iH9rlNUS22rPr6jTpUhlj0/usIx4MOukw9jRarWQV+L
 BAzAwltDZbE1RnhX/lLOsA+/ssJv6drJy12mVe+lAhSz5YmLAAkkiWik+bN3/SivqZSB
 tyiGNy7EdtL93OY41mEXQi+8O+ZUvTGg0bYJQQsXARAC0HDJGR5eCwqiYPitoQlLJL5L
 BculS0z4WpYVDR07qJDFUWq2Uy/exafPqnvP/3IY0iK3QWL8xPvOa7SNZXaTLmQVxwVW
 2yYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=/hHkj9ASCDSnWOl6HZMV6rVdEXPs9BdxQNbz1Iorwqk=;
 b=raGgsrU/0eqjVSCs/00LVQM3DXEgAK8/dhejhgGN5egQ2mj7V2eFpkvCvKs5A+XWi3
 fiUx92IciiAtVJ1+eNpvCPcYrbmWr86UFYcZpsoW2+ay2N74441YrkL3AvFcEJ6zUUTO
 6EXj2kgK+p6rExglo6lhWqR9BSCpUXBY0LJS+3OQlyxfYoLYTM6zPW4uSewq5Y9fg1qa
 cCA9TNYZQdNXSr5tAC4/SPQn++FaQDEarK2ssPJZx55wmTOTOqwKIamAk+81cu6Ax7b/
 gdlxjUixJTN4oN1nUcIMsJMrsUURmPpKNz6oMdUxy0RojdooeKWJu0kIH1OiPeo9gAUR
 GjzA==
X-Gm-Message-State: APjAAAUXSwrQE49BpEs1lvsch7WMd+MikprVgY8O3mZ3yk7dtSl9+hAC
 EpmxrfvZHWfoXLqWXB4dwQ==
X-Google-Smtp-Source: APXvYqzyrLAH2p7/7NDBLUvp2d3ymtoovffFiFsa+uEHGS5/j7ra4bsHrUxS6LOFpK1XEAxhI+wJNg==
X-Received: by 2002:aca:aacf:: with SMTP id t198mr4349185oie.135.1575492161723; 
 Wed, 04 Dec 2019 12:42:41 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id q28sm972758otc.60.2019.12.04.12.42.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 12:42:41 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 8F107180046;
 Wed,  4 Dec 2019 20:42:40 +0000 (UTC)
Date: Wed, 4 Dec 2019 14:42:39 -0600
From: Corey Minyard <minyard@acm.org>
To: "Paul E. McKenney" <paulmck@kernel.org>
Message-ID: <20191204204239.GE2896@minyard.net>
References: <f6fc58e5-2133-9560-a5bd-5cadc107ac51@huawei.com>
 <20191204201430.GM2889@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204201430.GM2889@paulmck-ThinkPad-P72>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1icbTz-0070xK-TY
Subject: Re: [Openipmi-developer] Suspicious RCU usage in ipmi code
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net,
 John Garry <john.garry@huawei.com>, Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Dec 04, 2019 at 12:14:30PM -0800, Paul E. McKenney wrote:
> On Wed, Dec 04, 2019 at 05:19:11PM +0000, John Garry wrote:
> If you are using srcu_read_lock() and srcu_read_lock(), then you can
> use srcu_dereference_check() to tell lockdep what you are up to.
> There are a couple of examples in include/linux/kvm_host.h.
> 
> 							Thanx, Paul

Thanks Paul, I assume that if you use srcu_read_lock(), you using
list_for_each_entry_rcu() inside the lock section is fine, right?

John, I was unable to reproduce.  Can you send me your kernel config
and the git commit you are on?

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
