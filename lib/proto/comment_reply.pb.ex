defmodule Commentapi.UpdateReplyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply: String.t(),
          isdeletedbyadmin: boolean,
          userid: String.t(),
          id: String.t(),
          postid: String.t(),
          status: integer,
          # count: integer,
          userlikes: integer,
          commentid: String.t(),
          media_url: String.t()
        }
  defstruct [
    :reply,
    :isdeletedbyadmin,
    :userid,
    :id,
    :postid,
    :status,
    # :count,
    :userlikes,
    :commentid,
    :media_url
  ]

  field :reply, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :string
  field :id, 4, type: :string
  field :postid, 5, type: :string
  field :status, 6, type: :int32
  # field :count, 7, type: :int32
  field :userlikes, 8, type: :int32
  field :commentid, 9, type: :string
  field :media_url, 10, type: :string
end

defmodule Commentapi.UpdateReplyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean
        }
  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule Commentapi.DeleteReplyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean
        }
  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule Commentapi.DeleteReplyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t()
        }
  defstruct [:id]

  field :id, 1, type: :string
end

defmodule Commentapi.CreateReplyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply: String.t(),
          isdeletedbyadmin: boolean,
          userid: String.t(),
          postid: String.t(),
          status: integer,
          # count: integer,
          userlikes: integer,
          commentid: String.t(),
          media_url: String.t()
        }
  defstruct [
    :reply,
    :isdeletedbyadmin,
    :userid,
    :postid,
    :status,
    # :count,
    :userlikes,
    :commentid,
    :media_url
  ]

  field :reply, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :string
  field :postid, 4, type: :string
  field :status, 5, type: :int32
  # field :count, 6, type: :int32
  field :userlikes, 7, type: :int32
  field :commentid, 8, type: :string
  field :media_url, 9, type: :string
end

defmodule Commentapi.CreateReplyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply: String.t(),
          isdeletedbyadmin: boolean,
          userid: String.t(),
          postid: String.t(),
          status: integer,
          # count: integer,
          userlikes: integer,
          commentid: String.t(),
          media_url: String.t(),
          updated_at: String.t(),
          inserted_at: String.t()
        }
  defstruct [
    :reply,
    :isdeletedbyadmin,
    :userid,
    :postid,
    :status,
    # :count,
    :userlikes,
    :commentid,
    :media_url,
    :updated_at,
    :inserted_at
  ]

  field :reply, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :string
  field :postid, 4, type: :string
  field :status, 5, type: :int32
  # field :count, 6, type: :int32
  field :userlikes, 7, type: :int32
  field :commentid, 8, type: :string
  field :media_url, 9, type: :string
  field :updated_at, 10, type: :string
  field :inserted_at, 11, type: :string
end

defmodule Commentapi.GetReplyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commentid: String.t()
        }
  defstruct [:commentid]

  field :commentid, 1, type: :string
end

defmodule Commentapi.GetReplyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replies: [Commentapi.Replies.t()]
        }
  defstruct [:replies]

  field :replies, 1, repeated: true, type: Commentapi.Replies
end

defmodule Commentapi.Replies do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply: String.t(),
          isdeletedbyadmin: boolean,
          userid: String.t(),
          id: String.t(),
          postid: String.t(),
          status: integer,
          count: integer,
          userlikes: integer,
          commentid: String.t(),
          medias: Commentapi.Media.t() | nil,
          updated_at: String.t(),
          inserted_at: String.t()
        }
  defstruct [
    :reply,
    :isdeletedbyadmin,
    :userid,
    :id,
    :postid,
    :status,
    :count,
    :userlikes,
    :commentid,
    :medias,
    :updated_at,
    :inserted_at
  ]

  field :reply, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :string
  field :id, 4, type: :string
  field :postid, 5, type: :string
  field :status, 6, type: :int32
  field :count, 7, type: :int32
  field :userlikes, 8, type: :int32
  field :commentid, 9, type: :string
  field :medias, 10, type: Commentapi.Media
  field :updated_at, 11, type: :string
  field :inserted_at, 12, type: :string
end

defmodule Commentapi.UpdateCommentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          comment: String.t(),
          isdeletedbyadmin: boolean,
          userid: String.t(),
          postid: String.t(),
          status: integer,
          # count: integer,
          userlikes: integer,
          id: String.t(),
          media_url: String.t()
        }
  defstruct [
    :comment,
    :isdeletedbyadmin,
    :userid,
    :postid,
    :status,
    # :count,
    :userlikes,
    :id,
    :media_url
  ]

  field :comment, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :string
  field :postid, 4, type: :string
  field :status, 5, type: :int32
  # field :count, 6, type: :int32
  field :userlikes, 7, type: :int32
  field :id, 8, type: :string
  field :media_url, 9, type: :string
end

defmodule Commentapi.UpdateCommentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean
        }
  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule Commentapi.DeleteCommentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean
        }
  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule Commentapi.DeleteCommentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t()
        }
  defstruct [:id]

  field :id, 1, type: :string
end

defmodule Commentapi.CreateCommentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          comment: String.t(),
          isdeletedbyadmin: boolean,
          userid: String.t(),
          postid: String.t(),
          status: integer,
          # count: integer,
          userlikes: integer,
          id: String.t(),
          media_url: String.t()
        }
  defstruct [
    :comment,
    :isdeletedbyadmin,
    :userid,
    :postid,
    :status,
    # :count,
    :userlikes,
    :id,
    :media_url
  ]

  field :comment, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :string
  field :postid, 4, type: :string
  field :status, 5, type: :int32
  # field :count, 6, type: :int32
  field :userlikes, 7, type: :int32
  field :id, 8, type: :string
  field :media_url, 9, type: :string
end

defmodule Commentapi.CreateCommentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          comment: String.t(),
          isdeletedbyadmin: boolean,
          userid: String.t(),
          postid: String.t(),
          status: integer,
          # count: integer,
          userlikes: integer,
          id: String.t(),
          media_url: String.t(),
          updated_at: String.t(),
          inserted_at: String.t()
        }
  defstruct [
    :comment,
    :isdeletedbyadmin,
    :userid,
    :postid,
    :status,
    # :count,
    :userlikes,
    :id,
    :media_url,
    :updated_at,
    :inserted_at
  ]

  field :comment, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :string
  field :postid, 4, type: :string
  field :status, 5, type: :int32
  # field :count, 6, type: :int32
  field :userlikes, 7, type: :int32
  field :id, 8, type: :string
  field :media_url, 9, type: :string
  field :updated_at, 10, type: :string
  field :inserted_at, 11, type: :string
end

defmodule Commentapi.GetCommentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          postid: String.t()
        }
  defstruct [:postid]

  field :postid, 1, type: :string
end

defmodule Commentapi.GetCommentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          comments: [Commentapi.Comment.t()]
        }
  defstruct [:comments]

  field :comments, 1, repeated: true, type: Commentapi.Comment
end

defmodule Commentapi.Comment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          comments: String.t(),
          isdeletedbyadmin: boolean,
          userid: String.t(),
          postid: String.t(),
          status: integer,
          count: integer,
          userlikes: integer,
          id: String.t(),
          medias: Commentapi.Media.t() | nil,
          updated_at: String.t(),
          inserted_at: String.t()
        }
  defstruct [
    :comments,
    :isdeletedbyadmin,
    :userid,
    :postid,
    :status,
    :count,
    :userlikes,
    :id,
    :medias,
    :updated_at,
    :inserted_at
  ]

  field :comments, 1, type: :string
  field :isdeletedbyadmin, 2, type: :bool
  field :userid, 3, type: :string
  field :postid, 4, type: :string
  field :status, 5, type: :int32
  field :count, 6, type: :int32
  field :userlikes, 7, type: :int32
  field :id, 8, type: :string
  field :medias, 10, type: Commentapi.Media
  field :updated_at, 11, type: :string
  field :inserted_at, 12, type: :string
end

defmodule Commentapi.Media do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          media_url: String.t()
        }
  defstruct [:media_url]

  field :media_url, 1, type: :string
end

defmodule Commentapi.CommentService.Service do
  @moduledoc false
  use GRPC.Service, name: "commentapi.CommentService"

  rpc :CreateComment, Commentapi.CreateCommentRequest, Commentapi.CreateCommentResponse

  rpc :GetComment, Commentapi.GetCommentRequest, Commentapi.GetCommentResponse

  rpc :DeleteComment, Commentapi.DeleteCommentRequest, Commentapi.DeleteCommentResponse

  rpc :UpdateComment, Commentapi.UpdateCommentRequest, Commentapi.UpdateCommentResponse

  rpc :CreateReply, Commentapi.CreateReplyRequest, Commentapi.CreateReplyResponse

  rpc :GetReply, Commentapi.GetReplyRequest, Commentapi.GetReplyResponse

  rpc :DeleteReply, Commentapi.DeleteReplyRequest, Commentapi.DeleteReplyResponse

  rpc :UpdateReply, Commentapi.UpdateReplyRequest, Commentapi.UpdateReplyResponse
end

defmodule Commentapi.CommentService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Commentapi.CommentService.Service
end
