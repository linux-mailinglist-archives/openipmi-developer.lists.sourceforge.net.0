Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1369B4D8E63
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Mar 2022 21:42:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nTrVz-00070s-FU; Mon, 14 Mar 2022 20:42:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <quic_jaehyoo@quicinc.com>) id 1nTpSw-000386-10
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Mar 2022 18:30:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=guV8D/zoqDzwVA8g73Md7rMeJWwPReKW2B+3M1C5VXE=; b=YQEvJc0o317EMSwfwS6/9PXSOc
 fVOtl7YESL17lHHXejy+tcYxPz7LoMaaRNzuH91vECamcN2BZufAKhLXjY2ceazE9HlRZx1QLLJ5b
 bH20j2a2Vl26TU0rCxekCR+iOe76dUNWI08H2ZhtO/GqdL3aqigOpMTz73P3y7ZNrK8E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=guV8D/zoqDzwVA8g73Md7rMeJWwPReKW2B+3M1C5VXE=; b=lCI+kATb/Em2HPq4dQpbpSHId6
 ynSEBR3QNFugYmt+9JiwjXVvOtMj/9clQ1fXkXVNioUYcyOGrBpFFl+BVD0lcHMt/n7BhLMGzSb2i
 Nil4JGzfFPkBOqk1pJSTENsikxSN0Tm8/JF7Neu68/cO6GMG1EZErag7Cyyve7MUzFqQ=;
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps (TLS1.2:AES256-SHA:256)
 (Exim 4.94.2) id 1nTpSp-0004sC-U5
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Mar 2022 18:30:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1647282639; x=1678818639;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=guV8D/zoqDzwVA8g73Md7rMeJWwPReKW2B+3M1C5VXE=;
 b=kIoTLtdyZpmKrhM6uPBhbvO6xxl9YGvql1MwKFNTUGDQMi1RQKF7ECxC
 kfJkZwW7cUz9svoWx1mnSdKoOZElGg7zZzFk+kRzEB0ef7pbrLvBWbRq1
 7fm5GC+297ZDBqPcf11obCjY0tl0s8EWLwZqD7Xgt5fGwqUYaQIIo9HhI E=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 14 Mar 2022 11:16:02 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 11:16:01 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Mon, 14 Mar 2022 11:16:01 -0700
Received: from [10.110.69.79] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Mon, 14 Mar
 2022 11:16:00 -0700
Message-ID: <7cd9301f-f417-e555-6025-74acfc53598a@quicinc.com>
Date: Mon, 14 Mar 2022 11:15:52 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Quan Nguyen <quan@os.amperecomputing.com>, Corey Minyard
 <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski@canonical.com>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@aj.id.au>, Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, Wolfram Sang
 <wsa@kernel.org>, <openipmi-developer@lists.sourceforge.net>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <linux-i2c@vger.kernel.org>, <openbmc@lists.ozlabs.org>
References: <20220310114119.13736-1-quan@os.amperecomputing.com>
 <20220310114119.13736-2-quan@os.amperecomputing.com>
From: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <20220310114119.13736-2-quan@os.amperecomputing.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Quan, [...] > +static void on_read_requested_event(struct
 ssif_bmc_ctx *ssif_bmc, u8 *val) > +{ > + if (ssif_bmc->state == SSIF_READY
 || > + ssif_bmc->state == SSIF_START || > + ssif_bmc->state == SSIF_REQ_RECVIN
 [...] Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.38 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nTpSp-0004sC-U5
X-Mailman-Approved-At: Mon, 14 Mar 2022 20:41:59 +0000
Subject: Re: [Openipmi-developer] [PATCH v6 1/4] ipmi: ssif_bmc: Add SSIF
 BMC driver
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Quan,

[...]

> +static void on_read_requested_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
> +{
> +	if (ssif_bmc->state == SSIF_READY ||
> +	    ssif_bmc->state == SSIF_START ||
> +	    ssif_bmc->state == SSIF_REQ_RECVING ||
> +	    ssif_bmc->state == SSIF_RES_SENDING) {
> +		ssif_bmc->state = SSIF_BAD_SMBUS;
> +		dev_warn(&ssif_bmc->client->dev,
> +			 "Warn: %s unexpected READ REQUESTED in state=%s\n",
> +			 __func__, state_to_string(ssif_bmc->state));

It will print out that the case happens in SSIF_BAD_SMBUS state always
because ssif_bmc->state is already assigned as SSIF_BAD_SMBUS above.
Move the assignment to after the dev_warn printing.

[...]

> +static const struct of_device_id ssif_bmc_match[] = {
> +	{ .compatible = "ampere,ssif-bmc" },

Does this driver have any Ampere specific handling? If not, it could be
"ssif-bmc" as a generic SSIF driver.

> +	{ },
> +};

Add 'MODULE_DEVICE_TABLE(of, ssif_bmc_match);'

> +
> +static const struct i2c_device_id ssif_bmc_id[] = {
> +	{ DEVICE_NAME, 0 },
> +	{ },
> +};
> +

Remove this blank line.

> +MODULE_DEVICE_TABLE(i2c, ssif_bmc_id);
> +
> +static struct i2c_driver ssif_bmc_driver = {
> +	.driver         = {
> +		.name           = DEVICE_NAME,
> +		.of_match_table = ssif_bmc_match,
> +	},
> +	.probe          = ssif_bmc_probe,
> +	.remove         = ssif_bmc_remove,
> +	.id_table       = ssif_bmc_id,
> +};
> +

Remove this blank line too.

-Jae

> +module_i2c_driver(ssif_bmc_driver);
> +
> +MODULE_AUTHOR("Quan Nguyen <quan@os.amperecomputing.com>");
> +MODULE_AUTHOR("Chuong Tran <chuong@os.amperecomputing.com>");
> +MODULE_DESCRIPTION("Linux device driver of the BMC IPMI SSIF interface.");
> +MODULE_LICENSE("GPL");

[...]


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
